/*! 
    * CJ Cookit PC - Main Module 
    * description Main Module 
    * author VinylC FED Group 
    * create 2019-05-21 
    * update 2019-07-02 
*/ 

define( 'cookit/main', ['jquery','vcui', 'libs/jquery.transit-0.9.12.min'], function( $, core ) {
    'use strict';

    var Main = core.ui( 'Main', { 
        bindjQuery: 'main', 
        selectors: {
            header: 'header', 
            mainWrap: '.main_wrap', 
            sliders: '.ui_carousel', 
            recommend: '.ma_individ', 
            review: '.ma_review'
        },

        initialize: function( el, options ) {
            if( this.supr(el, options) === false ) return; 

            this.$wrap = this.$el; 
            this.$billboardBanner = this.$wrap.find('.ma_billboard'); 
            this.$billboardIndicator = this.$billboardBanner.find('.indigator'); 
            this.$billboardCount = this.$billboardBanner.find('.count_wrap'); 
            this.$billboardArrow = this.$billboardBanner.find('.slide_arrow_wrap'); 
            //this.billboardColors = []; 

            this._addNoticeBanners(); 
            this._addAppHrefBanners(); 
            this._setBillboardBanner(); 
            this._addBillboardBanner(); 
            this._addRecommendBanner(); 
            this._addContentBanners(); 
            this._addReselIconToogle(); 
            this._addAlamIconToggle(); 
            this._addNewmenuIconToogle(); 
        }, 

        _addNoticeBanners: function() {
            var $noticeBanner = $('.ma_top_brn.system');
            $noticeBanner.css( {height:$noticeBanner.outerHeight()} );
            $noticeBanner.on( 'click', 'button.btn_close', function() {
                $noticeBanner.addClass('close');
                return false;
            });
        }, 

        _addAppHrefBanners: function() {
            var $appHrefBanner = $('.ma_top_brn.marketing');
            var $img = $appHrefBanner.find('img');
            if( !!!$img.length ) {
                $appHrefBanner.css( {height:$appHrefBanner.outerHeight()} );

            } else {
                $img.attr('src', $img.attr('src')).on('load', function() {
                    $appHrefBanner.css( {height:$appHrefBanner.outerHeight()} );
                });
            }

            $appHrefBanner.on( 'click', 'button.btn_close', function() {
                $appHrefBanner.addClass('close');
                return false;
            });
        }, 

        _setBillboardBanner: function() { 
            this.$billboardLists = this.$billboardBanner.find('.slide_conts'); 
            /*
            $.each( this.$billboardLists, function( i, item ) {
                this.billboardColors.push( $(item).attr('class').split(' ')[1] ); 
            }.bind(this) );
            */ 

            var self=this, loadedBillboardImage = false; 
            var $images = this.$billboardBanner.find('.slide_conts a img'); 
            if( !!!$images.length ) {
                var $videos = this.$billboardBanner.find('.slide_conts video'); 
                var posterImage = $videos.eq(0).attr('poster'); 
                $images = $('<img/>').attr('src',posterImage);
            }

            self.$billboardLists.css( {minHeight:'640px'} ); 

            $.each( $images, function( i, img ) { 
                $(img).attr('src', $(img).attr('src')).on('load', function() { 
                    if( !loadedBillboardImage ) loadedBillboardImage = true; 
                    else return false; 

                    self.$billboardLists.css( {height:$(img).height()} ); 
                    self.$wrap.removeClass('pre_loading'); 
                    $('.preloader').animate( {opacity:0}, 960, 'easeOutQuad', function() { 
                        $(this).remove(); 
                    }); 
                }); 
            }); 
        }, 

        _addBillboardBanner: function() { 


            var objEvents = {}; 
            objEvents.carouselinit = this._initBillboardBanner.bind(this); 
            objEvents.carouselbeforechange = this._beforeBillboardBanner.bind(this);
            objEvents.carouselafterchange = this._afterBillboardBanner.bind(this);

            var options = {}; 
            options.dots = true; 
            options.speed = 1200; 
            options.events = objEvents;
            
            /* 메인 빌보드영역 자동 롤링 */
            options.autoplay = true;
    	    options.autoplaySpeed = 2000;
    	    options.pauseOnHover = false,
    	    options.pauseOnFocus = false,
    	    
            this.$billboardBanner.find('.ui_carousel').vcCarousel( options ); 
            this.$billboardLists = this.$billboardBanner.find('.slide_conts'); 

            $.each( this.$billboardLists, function( i, item ) { 
                var $slide = $(item).css( {height:$(item).height()} ); 

                if( !!$(item).find('video').length ) { 
                    var $video = $slide.find('video'); 
                    $video[0].muted = true; 
                    $video.data('play',false); 
                    $video.data('render',false); 
                    $video.on( 'timeupdate', this._updateBillboardVideo.bind(this) ); 
                    $video.on( 'ended', this._endBillboardVideo.bind(this) ); 
                    var $poster = $('<img/>').addClass('video-poster');  
                    $poster.attr('src',$video[0].poster); 
                    $poster.attr('alt',',');
                    $poster.css( {position:'absolute',left:0,top:0} ); 
                    //$video.parent().append( $poster ); 

                    $slide.on( 'click', 'button.btn_sound', this._clickBillboardVideoSound.bind(this) ); 
                    $slide.on( 'click', 'button.btn_play', this._clickBillboardVideoPlay.bind(this) ); 
                } 
            }.bind(this)); 
        }, 

        _updateBillboardVideo: function( evt ) { 
            var $video = $(evt.currentTarget); 
            var percent = Math.floor((100/$video[0].duration)*$video[0].currentTime); 
            if( !$video.data('render') & percent > 0 ) {
                $video.siblings('.video-poster').hide(); 
                $video.data('render',true); 
            }
        }, 

        _endBillboardVideo: function( evt ) { 
            this._ctrlBillboardVideo( $(evt.currentTarget), false ); 
        }, 

        _clickBillboardVideoSound: function( evt ) { 
            var $target = $(evt.currentTarget); 
            var $video = $target.closest('.slide_conts').find('video'); 
            var other = !$target.hasClass('on') ? false : true; 
            var muted = $video.prop('muted',other); 
            var altText = !$target.hasClass('on') ? '소리켜기' : '소리끄기'; 
            $target.find('span').text( altText ); 
            $target.toggleClass('on');  
            return false; 
        }, 

        _clickBillboardVideoPlay: function( evt ) { 
            var $playBtn = $(evt.currentTarget); 
            var $slide = $playBtn.closest('.slide_conts'); 
            var isPlay = !!!$playBtn.hasClass('on'); 
            this._ctrlBillboardVideo( $slide, isPlay ); 
            return false; 
        }, 

        _ctrlBillboardVideo: function( element, play ) { 
            var $video = (element.prop('tagName') !== 'VIDEO') ? element.find('video') : element; 
            if( play ) $video[0].play(); 
            else $video[0].pause(); 

            var $playBtn = $video.closest('.slide_conts').find('.btn_play'); 
            $playBtn[play?'addClass':'removeClass']('on'); 
            $playBtn.find('span').text( $playBtn.hasClass('on')?'재생하기':'정지하기' ); 
        }, 

        _initBillboardBanner: function( evt, carousel ) { 
            var $paging = $(carousel.el).find('.count_wrap>span.num'); 
            $paging.html('<strong>1</strong><span class="dash">/</span>'+carousel.$slides.length+'</span>'); 

            this._updateBillboardBanner(0); 
            $('.indigator_pos').show();
            /* 20210407 자동롤링 제어 버튼 추가 */
            this._ctrlBillboardBenner(); 
        }, 

        _beforeBillboardBanner: function( evt, carousel, previous, index ) { 
            var index = index + 1; 
            var $paging = $(carousel.el).find('.count_wrap>span.num'); 
            $paging.html('<strong class="ui_page_cnt">'+index+'</strong><span class="dash">/</span>'+carousel.$slides.length+'</span>'); 

            setTimeout( function() {
                this._updateBillboardBanner( index-1 ); 
            }.bind(this), carousel.options.speed*0.5||0 ); 
        }, 

        _afterBillboardBanner: function( evt, carousel, index ) { 
            $.each( this.$billboardLists.find('video'), function( i, item ) { 
                this._ctrlBillboardVideo( $(item), true ); 
            }.bind(this)); 
        }, 

        _getBillboardColor: function( index ) { 
            this.$billboardLists = this.$billboardBanner.find('.slide_conts'); 
            var $slide = this.$billboardLists.not('.ui_carousel_cloned').eq(index); 
            var $productInfo = $slide.find('.prd_info_wrap'); 
            //return !!$productInfo.hasClass('white') ? 'white' : 'black'; 
        }, 

        _updateBillboardBanner: function( index ) { 
            this._resetBillboardBanner(); 

            //var color = this.billboardColors[index];
            var color = $('.ma_billboard .ui_carousel_current').hasClass('black')?'black':'white';
            //this.$billboardIndicator.addClass(color); 
        }, 

        _resetBillboardBanner: function() { 
        	/*
            $.each( this.billboardColors, function( i, color ) {
                this.$billboardIndicator.removeClass(color); 
            }.bind(this) );
            */
        	//this.$billboardIndicator.removeClass('black').removeClass('white');
        }, 

        /* 20210407 자동롤링 제어 버튼 추가 */
        _ctrlBillboardBenner: function( ) { 
            this.$billboardBanner.find('.btn_control').on('click', function() {
                if($(this).hasClass('pause')){
                    $('.ma_billboard').find('.ui_carousel')
                    .vcCarousel('pause')
                    .vcCarousel('pauseOnDotsHover', false)
                    .vcCarousel('autoplay', false);
                    $(this).attr('class','btn_control play');
                    $(this).find('span').text('재생');
                }else{
                    $('.ma_billboard').find('.ui_carousel')
                    .vcCarousel('play')
                    .vcCarousel('pauseOnDotsHover', true)
                    .vcCarousel('autoplay', true)
                    .vcCarousel('autoplaySpeed', 2000);
                    $(this).attr('class','btn_control pause');
                    $(this).find('span').text('일시정지');
                }
             });
        }, 

        // ma_individ 추천상품 
        _addRecommendBanner: function() {
            var self = this; 
            var $select = this.$recommend.find('.sl_taste'); 
            var $selectBtn = $select.find('button.sl_hd'); 
            var $options = $select.find('a'); 
            $selectBtn.on('click', function() {
                $select.toggleClass('on'); 
            }); 

            $options.on('click', function() {
                $select.removeClass('on'); 
                $options.removeClass('selected'); 
                $(this).addClass('selected'); 
                var option = $(this).find('span').text(); 
                $selectBtn.find('strong').text(option); 
                self._changeRecommendBanner( $(this).index()+1 ); 
                return false; 
            }); 

            this.recommendCarousels = []; 
            self.recommendSelectIndex = 1; 
            this.$recommendIndicator = this.$recommend.find('.indigator'); 
            this.$recommendCount = this.$recommend.find('.count_wrap'); 
            this.$recommendLists = this.$recommend.find('.list_recom'); 
            this.$recommendSlides = this.$recommend.find('.ui_carousel'); 

            $.each( this.$recommendSlides, function( i, item ) {
                $(item).vcCarousel( { draggable:false, variableWidth:true, speed:1200, events: { 
                    carouselinit: function( evt, carousel ) { 
                        var templateCount = '<strong>1</strong>/'+carousel.$slides.length; 
                        $(carousel.el).find('.count_wrap>span.num').html( templateCount ); 
                    }, 

                    carouselbeforechange: function( evt, carousel, previous, index ) {
                    }, 

                    carouselafterchange: function( evt, carousel, index ) {
                        var index = carousel.currentSlide, $player; 
                        var templateCount = '<strong>'+(index+1)+'</strong>/'+carousel.$slides.length; 
                        $(carousel.el).find('.count_wrap>span.num').html( templateCount ); 
                    } 
                }}); 

                this.recommendCarousels[i] = $(item).vcCarousel('instance'); 
            }.bind(this)); 

            this.$recommend.find('.indigator').on('click', 'button.prev', function() { 
                var index = self.recommendSelectIndex; 
                var carousel = self.recommendCarousels[index-1]; 
                carousel.goTo(carousel.currentSlide-1,false); 
                self._updateRecommendIndicator( index ); 
                return false; 
            });

            this.$recommend.find('.indigator').on('click', 'button.next', function() { 
                var index = self.recommendSelectIndex; 
                var carousel = self.recommendCarousels[index-1]; 
                carousel.goTo(carousel.currentSlide+1,false); 
                self._updateRecommendIndicator( index ); 
                return false; 
            });

            this._changeRecommendBanner(1); 
        }, 

        _changeRecommendBanner: function( index ) {
            this.$recommendLists.hide(); 
            this.$recommendLists.eq(index-1).show(); 
            this._updateRecommendIndicator( index ); 
            this.recommendSelectIndex = index; 
        }, 

        _updateRecommendIndicator: function( index ) {
            var carousel = this.recommendCarousels[index-1]; 
            if( $(carousel.el).hasClass('carousel-initialized') ) {
                this.$recommendIndicator.show(); 
                var count = carousel.currentSlide + 1; 
                var template = '<strong>'+count+'</strong>/'+carousel.$slides.length; 
                this.$recommendCount.find('>span.num').html( template );  

            } else {
                this.$recommendIndicator.hide();
            }
        }, 

        /*!
            상단 빌보드 아래, 공통 캐러셀 배너
            - row_grid - ma_coupon 쿠폰
            - ma_event 이벤트 
            - ma_hot_deal 핫딜 메뉴 
            - ma_review 생생한 리뷰 
        */
        _addContentBanners: function() { 
            var self = this, duration = 600; 
            var $reviewTxts = this.$review.find('.rv_m_txt li'); 
            var $reviewImgs = this.$review.find('.rv_major_img li'); 
            
            $.each( this.$sliders, function( i, item ) { 
                if( !!$(item).closest('.ma_billboard').length ) return; 
                if( !!$(item).closest('.ma_individ').length ) return; 

                var isCoupon = !!$(item).closest('.ma_coupon').length; 
                var isEvent = !!$(item).closest('.ma_event').length; 
                var isHotDeal = !!$(item).closest('.ma_hot_deal').length; 
                var isReview = !!$(item).closest('.ma_review').length; 
                var isVariableWidth = ( isEvent || isHotDeal ) ? false : true; 
                if( isReview || isEvent || isHotDeal ) duration = 1200; 
                $(item).vcCarousel( { variableWidth:isVariableWidth, speed:duration, events: { 
                    carouselinit: function( evt, carousel ) { 
                        var templateCount = '<strong>1</strong>/'+carousel.$slides.length; 
                        $(carousel.el).find('.count_wrap>span.num').html( templateCount ); 
                    }, 

                    carouselbeforechange: function( evt, carousel, previous, index ) {
                        var isReview = !!$(carousel.el).closest('.ma_review').length; 
                        if( isReview ) {
                            $reviewTxts.removeClass('on'); 
                            $reviewTxts.eq(previous).animate( {opacity:0}, 400, function() {
                                $reviewTxts.eq(index).delay(50).animate({opacity:1},600).addClass('on'); 
                            }); 

                            $reviewImgs.removeClass('on'); 
                            $reviewImgs.eq(previous).stop().transition( {opacity:0, duration:400, easing:'easeOutQuad', complete: function() {
                                $reviewImgs.eq(index).stop().delay(400).transition( {opacity:1, x:0, duration:760, easing:'easeOutQuad', complete: function() {
                                    $reviewImgs.eq(index-1).css({opacity:0,x:100}); 
                                    $reviewImgs.eq(index).addClass('on'); 
                                }});  
                            }}); 
                        }
                        $.each($("img[name^=imgResizingCookitReview]"), function(index, item){
            				var imgObject = {};
            				imgObject.url = $(this).attr("url");
            				imgObject.w = 0;
            				imgObject.h = 0;
            				imgObject.obj = this;
            				if(this.src == ""){
            					image.init(imgObject);
            				}
            			});
                    }, 

                    carouselafterchange: function( evt, carousel, index ) {
                        var index = carousel.currentSlide, $player; 
                        var templateCount = '<strong>'+(index+1)+'</strong>/'+carousel.$slides.length; 
                        $(carousel.el).find('.count_wrap>span.num').html( templateCount ); 

                        if( ($player = carousel.$slides.eq(carousel.previousSlide).find('iframe')).length  ) {
                            var $wrap = $player.parent();
                            $player.remove();
                            $wrap.children().show();
                        }
                    
                    } 
                }}); 
            }.bind(this)); 
        }, 

        // Re-sale notification apply toggle 
        _addReselIconToogle: function() { 
            this.$mainWrap.on( 'click', 'button.btn_resel', function( evt ) { 
                var $resel = $(evt.currentTarget); 
                var altText = $resel.hasClass('on') ? '재판매알림 신청하기' : '재판매알림 신청취소하기'; 
                $resel.find('span').text( altText ); 
                $resel.toggleClass('on'); 
                return false; 
            }); 
        }, 

        // Re-entry notification apply toggle 
        _addAlamIconToggle: function() { 
            this.$mainWrap.on( 'click', 'button.btn_alarm', function( evt ) { 
                var $alarm = $(evt.currentTarget); 
                var altText = $alarm.hasClass('on') ? '재입고알림 신청하기' : '재입고알림 신청취소하기'; 
                $alarm.find('span').text( altText ); 
                $alarm.toggleClass('on'); 
                return false; 
            }); 
        }, 

        // New-menu notification apply toggle 
        _addNewmenuIconToogle: function() { 
            this.$mainWrap.on( 'click', 'button.btn_ar_new', function( evt ) { 
                var $newMenu = $(evt.currentTarget); 
                var altText = $newMenu.hasClass('on') ? '신메뉴알림 신청하기' : '신메뉴알림 신청취소하기'; 
                $newMenu.find('span').text( altText ); 
                $newMenu.toggleClass('on'); 
                return false; 
            }); 
        }, 

        // public ------------------------------------- 

        videoPlay: function( video, play ) { 
            this._ctrlBillboardVideo( video, play ); 
        } 
    });

    return Main;
});