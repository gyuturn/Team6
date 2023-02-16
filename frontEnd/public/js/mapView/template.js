const getMapContentTemplate = () => `
    <div class="main__ForMap">
        <div class="main__SearchBarnDetailTab">
            <div class="main__SideSearchBar">
                <div class="main__SearchOption">
                    <button class="main__SearchFromCurrentLocation" >
                        <span id="Option1"><i class="fa-solid fa-location-dot"></i></span>
                    </button>
                    <button class="main__SearchFromRoute">
                        <span id="Option2"><i class="fa-solid fa-magnifying-glass"></i></span>
                    </button>
                </div>
                <div class="main__InputandResultinSearchBar">
                    <div class="main__ShowCurrentLocation">
                        <div class="main__CurrentLocation">
                            <span>현재위치</span>
                        </div>
                        <div class="main__CurrentLocationAddress">
                            현재 위치를 계산 중입니다....
                        </div>
                        <div class="main__SearchOptionButtonGroup">
                            <button id="sort_HH">휘발유</button>
                            <button id="sort_GG">경유</button>
                            <button id="sort_LL">LPG</button>
                        </div>
                    </div>
                    <div class="main__SearchResult">

                    </div>
                </div>
            </div>
            <div class="main__GSTDetailTab">
                <button class="main__GSTdetailCloseButton">
                    x
                </button>
                <div class="main__GSTdetail">
                    <div class="main__GSTdetail__Title">
                        <!-- <img class="main__GSTdetail__Title_LOGO" src="img/GasStation_Image/hyundai.png"> -->
                        <span id="GSTdetail__Name"></span>                          
                    </div>
                    <div class="main__GSTdetail__Contents">
                        <div class="main__GSTdetail__Contents__Oilprice">
                        </div>
                        <div class="main__GSTdetail__Contents__Basic">
                            기본정보
                            <div class="main__GSTdetail__Contents__Basic__Address">
                                <img src='./public/img/🦆 icon _map_.svg'>
                                <span id = "GSTdetail_addr"></span>
                            </div>
                            <div class="main__GSTdetail__Contents__Basic__Time">
                                <img src='./public/img/🦆 icon _clock_.svg'>
                                이용 시간을 알려주세요
                            </div>
                            <div class="main__GSTdetail__Contents__Basic__Phone">
                                <img src='./public/img/🦆 icon _phone_.svg'>
                                <span id="GSTdetail_phone"></span>
                            </div>
                            <div class="main__GSTdetail__Contents__Basic__Url">
                                <img src='./public/img/🦆 icon _home_.svg'>
                                <a id="GSTdetail_url"></a>
                            </div>
                        </div>
                        <div class="main__GSTdetail__Contents__OilPriceTable">
                            유가 정보
                            <div class="main__GSTdetail__Contents__OilPriceTable__TableHead">
                                <div class="main__GSTdetail__Contents__OilPriceTable__TableHead_Oil">
                                    <div>유종</div>
                                </div>
                                <div class="main__GSTdetail__Contents__OilPriceTable__TableHead_Price">
                                    <div>가격</div>
                                </div>
                            </div>
                            <div class="main__GSTdetail__Contents__OilPriceTable__Contents">
                            </div>
                        </div>
                        <div class="">
                            최근 가격 추이
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <button class="main__SearchBarHideButton">
            <img src='./public/img/🦆 icon _chevron left_.svg'>
        </button>
        <div class="main__MapDiv">
            <div id="map_div" class="map_wrap" style="float:left"></div>
        </div>
        <button id="main__btn_select">현재 위치에서 검색</button>
    </div>
`;

export { getMapContentTemplate }