<?xml version="1.0" encoding="UTF-8"?>
                        <StyledLayerDescriptor xmlns="http://www.opengis.net/sld" 
                            xmlns:ogc="http://www.opengis.net/ogc" 
                            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0" 
                            xmlns:xlink="http://www.w3.org/1999/xlink" 
                            xsi:schemaLocation="http://www.opengis.net/sld 
                            http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
                            <NamedLayer>
                                <se:Name>Bodemkaart2024</se:Name>
                                <UserStyle>
                                    <se:Name>Bodemkaart2024</se:Name>
                                    <se:FeatureTypeStyle><se:Rule>
                        <se:Name>Water</se:Name>
                        <se:Title>Water</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Water</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FEFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moeras</se:Name>
                        <se:Title>Moeras</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Moeras</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FEFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Dijk</se:Name>
                        <se:Title>Dijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Dijk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE02A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Terp</se:Name>
                        <se:Title>Terp</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Terp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE02A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Groeve</se:Name>
                        <se:Title>Groeve</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Groeve</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Sterk afgegraven terrein</se:Name>
                        <se:Title>Sterk afgegraven terrein</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Sterk afgegraven terrein</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Sterk ge-egaliseerd</se:Name>
                        <se:Title>Sterk ge-egaliseerd</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Sterk ge-egaliseerd</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Sterk verwerkt terrein</se:Name>
                        <se:Title>Sterk verwerkt terrein</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Sterk verwerkt terrein</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mijnstort</se:Name>
                        <se:Title>Mijnstort</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Mijnstort</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Bebouwd gebied</se:Name>
                        <se:Title>Bebouwd gebied</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Bebouwd gebied</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Bovenland</se:Name>
                        <se:Title>Bovenland</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Bovenland</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Sterk opgehoogd terrein</se:Name>
                        <se:Title>Sterk opgehoogd terrein</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Sterk opgehoogd terrein</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FFFFFF</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Met huisvuil opgehoogde gronden</se:Name>
                        <se:Title>Met huisvuil opgehoogde gronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>pedologicalinterest</ogc:PropertyName>
                                <ogc:Literal>Met huisvuil opgehoogde gronden</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op veenmosveen</se:Name>
                        <se:Title>Koopveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#5820A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Name>
                        <se:Title>Koopveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#5820A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Name>
                        <se:Title>Koopveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVd</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#5820A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op zand, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Koopveengronden op zand, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#814CA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Aarveengronden</se:Name>
                        <se:Title>Aarveengronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hEV</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#320249</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Madeveengronden op zeggeveen, rietzeggeveen of broekveen</se:Name>
                        <se:Title>Madeveengronden op zeggeveen, rietzeggeveen of broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>aVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#5820FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Madeveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Madeveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>aVp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA4CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlietveengronden</se:Name>
                        <se:Title>Vlietveengronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vo</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197FFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op veenmosveen</se:Name>
                        <se:Title>Weideveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Name>
                        <se:Title>Weideveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Name>
                        <se:Title>Weideveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVd</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op zand, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Weideveengronden op zand, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op bosveen (of eutroof broekveen)</se:Name>
                        <se:Title>Waardveengronden op bosveen (of eutroof broekveen)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVb</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Name>
                        <se:Title>Waardveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Name>
                        <se:Title>Waardveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVd</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op zand, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Waardveengronden op zand, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Meerveengronden op veenmosveen</se:Name>
                        <se:Title>Meerveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817FFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Meerveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Meerveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AAFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Meerveengronden met een mineraal dek 5-8 % lutum op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Meerveengronden met een mineraal dek 5-8 % lutum op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>uVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Meerveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Meerveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zVp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAAFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op veenmosveen</se:Name>
                        <se:Title>Vlierveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1902FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op rietveen of zeggerietveen</se:Name>
                        <se:Title>Vlierveengronden op rietveen of zeggerietveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vr</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1902FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Name>
                        <se:Title>Vlierveengronden op bagger, verslagen veen, gyttja of andere veensoorten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vd</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1902FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Vlierveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#3220FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Vlierveengronden op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#3220FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veengronden met een veenkoloniaal dek op zeggeveen, rietzeggeveen of moerasbosveen</se:Name>
                        <se:Title>Veengronden met een veenkoloniaal dek op zeggeveen, rietzeggeveen of moerasbosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#584CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veengronden met een veenkoloniaal dek op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Veengronden met een veenkoloniaal dek op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7FFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige podzolgronden met een zavel- of een kleidek en een moerige tussenlaag</se:Name>
                        <se:Title>Moerige podzolgronden met een zavel- of een kleidek en een moerige tussenlaag</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kWp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#584CD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige podzolgronden met een moerige bovengrond</se:Name>
                        <se:Title>Moerige podzolgronden met een moerige bovengrond</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>vWp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D320D0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige podzolgronden met een veenkoloniaal dek en een moerige tussenlaag</se:Name>
                        <se:Title>Moerige podzolgronden met een veenkoloniaal dek en een moerige tussenlaag</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iWp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D34CD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een moerige bovengrond of moerige tussenlaag op niet-gerijpte zavel of klei</se:Name>
                        <se:Title>Moerige eerdgronden met een moerige bovengrond of moerige tussenlaag op niet-gerijpte zavel of klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Wo</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197FA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een zavel- of kleidek en een moerige tussenlaag op zand</se:Name>
                        <se:Title>Moerige eerdgronden met een zavel- of kleidek en een moerige tussenlaag op zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kWz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327FD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een zanddek en een moerige tussenlaag op zand</se:Name>
                        <se:Title>Moerige eerdgronden met een zanddek en een moerige tussenlaag op zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zWz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7FD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een moerige bovengrond op zand</se:Name>
                        <se:Title>Moerige eerdgronden met een moerige bovengrond op zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>vWz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA20D0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een veenkoloniaal dek en een moerige tussenlaag op zand</se:Name>
                        <se:Title>Moerige eerdgronden met een veenkoloniaal dek en een moerige tussenlaag op zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iWz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA4CD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Holtpodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Holtpodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Y23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Holtpodzolgronden; grof zand</se:Name>
                        <se:Title>Holtpodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Y30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEAA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Loopodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Loopodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cY21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Loopodzolgronden; grof zand</se:Name>
                        <se:Title>Loopodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cY30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veldpodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Veldpodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hn23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Laarpodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Laarpodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHn21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Laarpodzolgronden; grof zand</se:Name>
                        <se:Title>Laarpodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHn30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37FA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Haarpodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Haarpodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hd21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEAAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Haarpodzolgronden; grof zand</se:Name>
                        <se:Title>Haarpodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hd30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEAAD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kamppodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Kamppodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kuilbrikgronden; zandige leem</se:Name>
                        <se:Title>Kuilbrikgronden; zandige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLn5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2000</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Daalbrikgronden; zandige leem</se:Name>
                        <se:Title>Daalbrikgronden; zandige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLh5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D32000</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Radebrikgronden; zandige leem</se:Name>
                        <se:Title>Radebrikgronden; zandige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLd5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2000</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Bergbrikgronden; siltige leem</se:Name>
                        <se:Title>Bergbrikgronden; siltige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLb6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE021E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Daalbrikgronden; fijnzandige, siltige, lichte zavel</se:Name>
                        <se:Title>Daalbrikgronden; fijnzandige, siltige, lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BKh26</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D34C1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Radebrikgronden; fijnzandige lichte zavel</se:Name>
                        <se:Title>Radebrikgronden; fijnzandige lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BKd25</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE4C1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Rooibrikgronden; zwak en sterk lemig fijn zand</se:Name>
                        <se:Title>Rooibrikgronden; zwak en sterk lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BZd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE7F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Lage enkeerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Lage enkeerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EZg21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Lage enkeerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Lage enkeerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EZg23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge bruine enkeerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Hoge bruine enkeerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>bEZ21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#810200</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge bruine enkeerdgronden; grof zand</se:Name>
                        <se:Title>Hoge bruine enkeerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>bEZ30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58021E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge zwarte enkeerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Hoge zwarte enkeerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zEZ21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#582000</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge zwarte enkeerdgronden; grof zand</se:Name>
                        <se:Title>Hoge zwarte enkeerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zEZ30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58201E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tuineerdgronden; zware zavel en klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Tuineerdgronden; zware zavel en klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EK76</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tuineerdgronden; zware zavel en klei, profielverloop 5, of 5 en 2, of 2</se:Name>
                        <se:Title>Tuineerdgronden; zware zavel en klei, profielverloop 5, of 5 en 2, of 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EK79</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tuineerdgronden; zandige leem</se:Name>
                        <se:Title>Tuineerdgronden; zandige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EL5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Beekeerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Beekeerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZg23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Beekeerdgronden; grof zand</se:Name>
                        <se:Title>Beekeerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZg30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gooreerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Gooreerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZn23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kanteerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Kanteerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>tZd21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kanteerdgronden; grof zand</se:Name>
                        <se:Title>Kanteerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>tZd30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Akkereerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Akkereerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cZd21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Akkereerdgronden; grof zand</se:Name>
                        <se:Title>Akkereerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cZd30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlakvaaggronden; lemig fijn zand</se:Name>
                        <se:Title>Vlakvaaggronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Duinvaaggronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Duinvaaggronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Duinvaaggronden; grof zand</se:Name>
                        <se:Title>Duinvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vorstvaaggronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Vorstvaaggronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zb21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vorstvaaggronden; grof zand</se:Name>
                        <se:Title>Vorstvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zb30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; uiterst fijn zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; uiterst fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn10A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; grof zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn30A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; grof zand, gedeeltelijk ontkalkt</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; grof zand, gedeeltelijk ontkalkt</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn30Ab</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; matig fijn zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; matig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn50A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; matig fijn zand, gedeeltelijk ontkalkt</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; matig fijn zand, gedeeltelijk ontkalkt</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn50Ab</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende duinvaaggronden; fijn zand, gedeeltelijk ontkalkt</se:Name>
                        <se:Title>Kalkhoudende duinvaaggronden; fijn zand, gedeeltelijk ontkalkt</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd20Ab</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende duinvaaggronden; grof zand</se:Name>
                        <se:Title>Kalkhoudende duinvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd30A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vorstvaaggronden; fijn zand</se:Name>
                        <se:Title>Kalkhoudende vorstvaaggronden; fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zb20A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; zwak en sterk lemig, kleiig, uiterst fijn zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; zwak en sterk lemig, kleiig, uiterst fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Sn13A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Slikvaaggronden; zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Slikvaaggronden; zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOo02</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FEFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Slikvaaggronden; geen zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Slikvaaggronden; geen zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOo05</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFEFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; zware zavel en klei; zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; zware zavel en klei; zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOb72</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; lichte zavel; geen zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; lichte zavel; geen zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOb15</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; zware zavel en klei; zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; zware zavel en klei; zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ROb72</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; zware zavel en klei; geen zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; zware zavel en klei; geen zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ROb75</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Liedeerdgronden; klei, profielverloop 1</se:Name>
                        <se:Title>Liedeerdgronden; klei, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMv81</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#194C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tochteerdgronden; zavel</se:Name>
                        <se:Title>Tochteerdgronden; zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMo50</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke leek-/woudeerdgronden; zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkrijke leek-/woudeerdgronden; zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn52A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke leek-/woudeerdgronden; zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke leek-/woudeerdgronden; zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn55A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn52C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; klei, profielverloop 2</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn82C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAD37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn56C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn55C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke drechtvaaggronden; zavel, profielverloop 1</se:Name>
                        <se:Title>Kalkrijke drechtvaaggronden; zavel, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mv51A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58AAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme drechtvaaggronden; zavel en lichte klei, profielverloop 1</se:Name>
                        <se:Title>Kalkarme drechtvaaggronden; zavel en lichte klei, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mv61C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme drechtvaaggronden; zware klei, profielverloop 1</se:Name>
                        <se:Title>Kalkarme drechtvaaggronden; zware klei, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mv41C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#194C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke nesvaaggronden; zware zavel</se:Name>
                        <se:Title>Kalkrijke nesvaaggronden; zware zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mo20A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme nesvaaggronden; zavel</se:Name>
                        <se:Title>Kalkarme nesvaaggronden; zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mo50C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; lichte zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; lichte zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn12A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; klei, profielverloop 2</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn82A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; zavel, profielverloop 3, of 3 en 4 of 4</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; zavel, profielverloop 3, of 3 en 4 of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn56A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; lichte zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; lichte zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn15A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; zware zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; zware zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn25A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; zware klei, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; zware klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn45A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn52C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn56C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; lichte zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; lichte zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn15C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; zware zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; zware zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn25C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; zavel, profielverloop 2</se:Name>
                        <se:Title>Knippige poldervaaggronden; zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn52C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AA7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; zavel, profielverloop 3</se:Name>
                        <se:Title>Knippige poldervaaggronden; zavel, profielverloop 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn53C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; zavel, profielverloop 4, of 4 en 3</se:Name>
                        <se:Title>Knippige poldervaaggronden; zavel, profielverloop 4, of 4 en 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn58C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; klei, profielverloop 4, of 4 en 3</se:Name>
                        <se:Title>Knippige poldervaaggronden; klei, profielverloop 4, of 4 en 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn88C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; zware zavel, profielverloop 5</se:Name>
                        <se:Title>Knippige poldervaaggronden; zware zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn25C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; klei, profielverloop 5</se:Name>
                        <se:Title>Knippige poldervaaggronden; klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn85C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippoldervaaggronden; zavel en lichte klei, profielverloop 4, of 4 en 3</se:Name>
                        <se:Title>Knippoldervaaggronden; zavel en lichte klei, profielverloop 4, of 4 en 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kMn68C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippoldervaaggronden; zware klei, profielverloop 4, of 4 en 3</se:Name>
                        <se:Title>Knippoldervaaggronden; zware klei, profielverloop 4, of 4 en 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kMn48C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Liedeerdgronden; klei, profielverloop 1</se:Name>
                        <se:Title>Liedeerdgronden; klei, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pRv81</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19201E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Leek-/woudeerdgronden; klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pRn86</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; zavel, profielverloop 5, of 5 en 2, of 2</se:Name>
                        <se:Title>Leek-/woudeerdgronden; zavel, profielverloop 5, of 5 en 2, of 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pRn59</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende drechtvaaggronden; profielverloop 1</se:Name>
                        <se:Title>Kalkhoudende drechtvaaggronden; profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rv01A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#194C1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende nesvaaggronden; zavel en lichte klei</se:Name>
                        <se:Title>Kalkhoudende nesvaaggronden; zavel en lichte klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ro60A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende nesvaaggronden; zware klei</se:Name>
                        <se:Title>Kalkhoudende nesvaaggronden; zware klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ro40A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze nesvaaggronden; zware klei</se:Name>
                        <se:Title>Kalkloze nesvaaggronden; zware klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ro40C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; klei, profielverloop 2</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn82A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; zavel en lichte klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; zavel en lichte klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn66A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; lichte zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; lichte zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn15A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; zware zavel en lichte klei, profielverloop 5</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; zware zavel en lichte klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn95A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zavel en lichte klei, profielverloop 2</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zavel en lichte klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn62C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAD31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware klei, profielverloop 2</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn42C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAD31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zavel en lichte klei, profielverloop 3, of 3 en 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zavel en lichte klei, profielverloop 3, of 3 en 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn67C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware klei, profielverloop 3, of 3 en 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware klei, profielverloop 3, of 3 en 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn47C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware zavel en lichte klei, profielverloop 5</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware zavel en lichte klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn95C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware klei, profielverloop 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware klei, profielverloop 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn44C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197F1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden (bruine komgrond); zware klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden (bruine komgrond); zware klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>bRn46C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197F1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende ooivaaggronden; lichte zavel</se:Name>
                        <se:Title>Kalkhoudende ooivaaggronden; lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rd10A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze ooivaaggronden; lichte zavel</se:Name>
                        <se:Title>Kalkloze ooivaaggronden; lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rd10C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze ooivaaggronden; zware zavel en lichte klei</se:Name>
                        <se:Title>Kalkloze ooivaaggronden; zware zavel en lichte klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rd90C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D31E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; zware zavel</se:Name>
                        <se:Title>Leek-/woudeerdgronden; zware zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pKRn2</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; zware zavel</se:Name>
                        <se:Title>Poldervaaggronden; zware zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KRn2</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; klei</se:Name>
                        <se:Title>Poldervaaggronden; klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KRn8</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324C00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden; zware zavel en klei</se:Name>
                        <se:Title>Ooivaaggronden; zware zavel en klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KRd7</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; zandige leem in situ</se:Name>
                        <se:Title>Poldervaaggronden; zandige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ln5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; zandige leem; colluvium in dal</se:Name>
                        <se:Title>Poldervaaggronden; zandige leem; colluvium in dal</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Lnd5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; siltige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Name>
                        <se:Title>Poldervaaggronden; siltige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Lnh6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend tussen 0.5 en 0.8 m; zandige leem in situ</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend tussen 0.5 en 0.8 m; zandige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Lh5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D32049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem in situ</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ld5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem in situ</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ld6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem; colluvium in dal</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem; colluvium in dal</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ldd6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ldh5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; siltige leem; colluvium in hellingvoet of uitspoelingswaaier</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ldh6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mariene afzettingen ouder dan pleistoceen; glauconietklei</se:Name>
                        <se:Title>Mariene afzettingen ouder dan pleistoceen; glauconietklei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MA</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19D3D0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mariene afzettingen ouder dan pleistoceen; zavel en klei</se:Name>
                        <se:Title>Mariene afzettingen ouder dan pleistoceen; zavel en klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MK</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D3D0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mariene afzettingen ouder dan pleistoceen; fijn zand en zavel</se:Name>
                        <se:Title>Mariene afzettingen ouder dan pleistoceen; fijn zand en zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MZk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mariene afzettingen ouder dan pleistoceen; fijn zand</se:Name>
                        <se:Title>Mariene afzettingen ouder dan pleistoceen; fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MZz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Overige kleigronden</se:Name>
                        <se:Title>Overige kleigronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KT</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Fluviatiele afzettingen ouder dan laat-pleistoceen; grind en grof zand</se:Name>
                        <se:Title>Fluviatiele afzettingen ouder dan laat-pleistoceen; grind en grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>FG</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Fluviatiele afzettingen ouder dan laat-pleistoceen; zavel en klei</se:Name>
                        <se:Title>Fluviatiele afzettingen ouder dan laat-pleistoceen; zavel en klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>FK</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ondiep kalksteen</se:Name>
                        <se:Title>Ondiep kalksteen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KM</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kleefaarde</se:Name>
                        <se:Title>Kleefaarde</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KK</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vuursteen eluvium</se:Name>
                        <se:Title>Vuursteen eluvium</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KS</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Zeer ondiepe keileem, potklei, enz</se:Name>
                        <se:Title>Zeer ondiepe keileem, potklei, enz</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KX</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE0249</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Afgegraven kleigronden</se:Name>
                        <se:Title>Afgegraven kleigronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AAK</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587FA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Aangemaakte petgaten</se:Name>
                        <se:Title>Aangemaakte petgaten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AAP</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kleiige beekdalgronden</se:Name>
                        <se:Title>Kleiige beekdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ABk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Lössige beekdalgronden</se:Name>
                        <se:Title>Lössige beekdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ABl</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Zandige beekdalgronden</se:Name>
                        <se:Title>Zandige beekdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ABz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Venige beekdalgronden</se:Name>
                        <se:Title>Venige beekdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ABv</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden zonder veen binnen 1.2 m; zw. zavel en l. klei</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden zonder veen binnen 1.2 m; zw. zavel en l. klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEk9</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; zavel</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEm5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; klei</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEm8</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#194C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; zw. zavel en l. klei</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m; zw. zavel en l. klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEm9</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m of met niet-ger. ondergrond; zw. zavel en l. klei</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden met plaats. veen binnen 1.2 m of met niet-ger. ondergrond; zw. zavel en l. klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEm9A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden (eerd- en vaaggronden met ger. ondergrond); zavel en l. klei, kalkrijk</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden (eerd- en vaaggronden met ger. ondergrond); zavel en l. klei, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEp6A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Geëgaliseerde en verwerkte zeekleigronden (eerd- en vaaggronden met ger. ondergrond); zw. zavel en klei, kalkrijk</se:Name>
                        <se:Title>Geëgaliseerde en verwerkte zeekleigronden (eerd- en vaaggronden met ger. ondergrond); zw. zavel en klei, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AEp7A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Roodoornige kleiige Vechtdalgronden</se:Name>
                        <se:Title>Roodoornige kleiige Vechtdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AFk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32207C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Roodoornige zandige Vechtdalgronden</se:Name>
                        <se:Title>Roodoornige zandige Vechtdalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AFz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#584C7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hollebollige, gemoerde zeekleigronden; zw. zavel en l. klei</se:Name>
                        <se:Title>Hollebollige, gemoerde zeekleigronden; zw. zavel en l. klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AGm9C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Glauconiethellinggronden</se:Name>
                        <se:Title>Glauconiethellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHa</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19D3D0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Löss-, terras- en kalksteenhellinggronden</se:Name>
                        <se:Title>Löss-, terras- en kalksteenhellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3207C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalksteenhellinggronden</se:Name>
                        <se:Title>Kalksteenhellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Löss- en terrashellinggronden</se:Name>
                        <se:Title>Löss- en terrashellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHl</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE207C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vuursteenhellinggronden</se:Name>
                        <se:Title>Vuursteenhellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Terras-, tertiair-, kalksteen- en veenhellinggronden</se:Name>
                        <se:Title>Terras-, tertiair-, kalksteen- en veenhellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHv</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#8120A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kreekbeddingen</se:Name>
                        <se:Title>Kreekbeddingen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AK</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AAD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Mengelgronden</se:Name>
                        <se:Title>Mengelgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AM</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Duin- en kweldergronden</se:Name>
                        <se:Title>Duin- en kweldergronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AD</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Petgaten</se:Name>
                        <se:Title>Petgaten</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AP</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Roergronden</se:Name>
                        <se:Title>Roergronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AR</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veenafbraakgebied</se:Name>
                        <se:Title>Veenafbraakgebied</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AVk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#584CA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Warmoezerijgronden (gerijpt)</se:Name>
                        <se:Title>Warmoezerijgronden (gerijpt)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AWg</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Warmoezerijgronden (veen)</se:Name>
                        <se:Title>Warmoezerijgronden (veen)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AWv</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; zand, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; zand, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW0A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; zand en zavel, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; zand en zavel, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW5A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; zavel en klei, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; zavel en klei, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW6A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; klei, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; klei, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW8A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op bosveen (of eutroof broekveen)</se:Name>
                        <se:Title>Koopveengronden op bosveen (of eutroof broekveen)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVb</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58207C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op rietveen of zeggerietveen</se:Name>
                        <se:Title>Koopveengronden op rietveen of zeggerietveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVr</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#5820A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Koopveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Koopveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>hVk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#814CA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Madeveengronden op veenmosveen</se:Name>
                        <se:Title>Madeveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>aVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#8120FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Madeveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Madeveengronden op zand zonder humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>aVz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#814CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op bosveen (of eutroof broekveen)</se:Name>
                        <se:Title>Weideveengronden op bosveen (of eutroof broekveen)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVb</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op rietveen of zeggerietveen</se:Name>
                        <se:Title>Weideveengronden op rietveen of zeggerietveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVr</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Weideveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Weideveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pVk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op veenmosveen</se:Name>
                        <se:Title>Waardveengronden op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op rietveen of zeggerietveen</se:Name>
                        <se:Title>Waardveengronden op rietveen of zeggerietveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVr</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1920FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Waardveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Waardveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kVk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Meerveengronden op zeggeveen, rietzeggeveen of broekveen</se:Name>
                        <se:Title>Meerveengronden op zeggeveen, rietzeggeveen of broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zVc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587FFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op bosveen (of eutroof broekveen)</se:Name>
                        <se:Title>Vlierveengronden op bosveen (of eutroof broekveen)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vb</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1902A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Name>
                        <se:Title>Vlierveengronden op zeggeveen, rietzeggeveen of (mesotroof) broekveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vc</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#1902FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlierveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Vlierveengronden op (meestal niet-gerijpte) zavel of klei, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Vk</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#3220FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veengronden met een veenkoloniaal dek op veenmosveen</se:Name>
                        <se:Title>Veengronden met een veenkoloniaal dek op veenmosveen</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iVs</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA20FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veengronden met een veenkoloniaal dek op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Name>
                        <se:Title>Veengronden met een veenkoloniaal dek op zand met humuspodzol, beginnend ondieper dan 1.2 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>iVp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37FFE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige podzolgronden met een humushoudend zanddek en een moerige tussenlaag</se:Name>
                        <se:Title>Moerige podzolgronden met een humushoudend zanddek en een moerige tussenlaag</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zWp</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D37FD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een moerige bovengrond of moerige tussenlaag op gerijpte zavel of klei</se:Name>
                        <se:Title>Moerige eerdgronden met een moerige bovengrond of moerige tussenlaag op gerijpte zavel of klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Wg</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#324CA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Moerige eerdgronden met een mineraal dek 5-8% lutum en een moerige tussenlaag op zand</se:Name>
                        <se:Title>Moerige eerdgronden met een mineraal dek 5-8% lutum en een moerige tussenlaag op zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>uWz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7FD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Holtpodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Holtpodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Y21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE7F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Horstpodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Horstpodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Y23b</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Loopodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Loopodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cY23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veldpodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Veldpodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hn21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE7F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veldpodzolgronden; grof zand</se:Name>
                        <se:Title>Veldpodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hn30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE7FA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Laarpodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Laarpodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHn23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA7F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Haarpodzolgronden; lemig fijn zand</se:Name>
                        <se:Title>Haarpodzolgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Hd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kamppodzolgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Kamppodzolgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHd21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kamppodzolgronden; grof zand</se:Name>
                        <se:Title>Kamppodzolgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cHd30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3AAD0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kuilbrikgronden; siltige leem</se:Name>
                        <se:Title>Kuilbrikgronden; siltige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLn6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA0200</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Daalbrikgronden; siltige leem</se:Name>
                        <se:Title>Daalbrikgronden; siltige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLh6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D30200</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Radebrikgronden; siltige leem</se:Name>
                        <se:Title>Radebrikgronden; siltige leem</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BLd6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE0200</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Daalbrikgronden; fijnzandige lichte zavel</se:Name>
                        <se:Title>Daalbrikgronden; fijnzandige lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BKh25</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D34C1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Radebrikgronden; fijnzandige, siltige, lichte zavel</se:Name>
                        <se:Title>Radebrikgronden; fijnzandige, siltige, lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BKd26</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE4C1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Rooibrikgronden; zeer sterk lemig fijn zand</se:Name>
                        <se:Title>Rooibrikgronden; zeer sterk lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>BZd24</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE4C00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Lage enkeerdgronden; grof zand</se:Name>
                        <se:Title>Lage enkeerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EZg30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817FA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge bruine enkeerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Hoge bruine enkeerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>bEZ23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#580200</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Hoge zwarte enkeerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Hoge zwarte enkeerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>zEZ23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#322000</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende enkeerdgronden; matig fijn zand</se:Name>
                        <se:Title>Kalkhoudende enkeerdgronden; matig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EZ50A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#817F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tuineerdgronden; lichte zavel, profielverloop 5, of 5 en 2, of 2</se:Name>
                        <se:Title>Tuineerdgronden; lichte zavel, profielverloop 5, of 5 en 2, of 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>EK19</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#587F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Beekeerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Beekeerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZg21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gooreerdgronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Gooreerdgronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZn21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gooreerdgronden; grof zand</se:Name>
                        <se:Title>Gooreerdgronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZn30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kanteerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Kanteerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>tZd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Akkereerdgronden; lemig fijn zand</se:Name>
                        <se:Title>Akkereerdgronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>cZd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlakvaaggronden; leemarm en zwak lemig fijn zand</se:Name>
                        <se:Title>Vlakvaaggronden; leemarm en zwak lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn21</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vlakvaaggronden; grof zand</se:Name>
                        <se:Title>Vlakvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn30</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FED37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Duinvaaggronden; lemig fijn zand</se:Name>
                        <se:Title>Duinvaaggronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Vorstvaaggronden; lemig fijn zand</se:Name>
                        <se:Title>Vorstvaaggronden; lemig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zb23</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende beekeerdgronden; zeer fijn en matig fijn zand</se:Name>
                        <se:Title>Kalkhoudende beekeerdgronden; zeer fijn en matig fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pZg20A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; zeer fijn zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; zeer fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zn40A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende duinvaaggronden; fijn zand</se:Name>
                        <se:Title>Kalkhoudende duinvaaggronden; fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zd20A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vorstvaaggronden; grof zand</se:Name>
                        <se:Title>Kalkhoudende vorstvaaggronden; grof zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Zb30A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende vlakvaaggronden; zeer sterk lemig, kleiig, uiterst fijn zand</se:Name>
                        <se:Title>Kalkhoudende vlakvaaggronden; zeer sterk lemig, kleiig, uiterst fijn zand</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Sn14A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; lichte zavel; zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; lichte zavel; zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOb12</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gorsvaaggronden; zware zavel en klei; geen zand beginnend ondieper dan 0.8 m</se:Name>
                        <se:Title>Gorsvaaggronden; zware zavel en klei; geen zand beginnend ondieper dan 0.8 m</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>MOb75</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FED0</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Liedeerdgronden; zavel, profielverloop 1</se:Name>
                        <se:Title>Liedeerdgronden; zavel, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMv51</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Tochteerdgronden; klei</se:Name>
                        <se:Title>Tochteerdgronden; klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMo80</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke leek-/woudeerdgronden; klei, profielverloop 2</se:Name>
                        <se:Title>Kalkrijke leek-/woudeerdgronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn82A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke leek-/woudeerdgronden; klei, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke leek-/woudeerdgronden; klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn85A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; klei, profielverloop 5</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn85C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme leek-/woudeerdgronden; klei, profielverloop 3, of 3 en 4 of 4</se:Name>
                        <se:Title>Kalkarme leek-/woudeerdgronden; klei, profielverloop 3, of 3 en 4 of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pMn86C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke drechtvaaggronden; klei, profielverloop 1</se:Name>
                        <se:Title>Kalkrijke drechtvaaggronden; klei, profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mv81A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AAA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke nesvaaggronden; lichte zavel</se:Name>
                        <se:Title>Kalkrijke nesvaaggronden; lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mo10A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81FEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke nesvaaggronden; klei</se:Name>
                        <se:Title>Kalkrijke nesvaaggronden; klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mo80A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FEA7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme nesvaaggronden; klei</se:Name>
                        <se:Title>Kalkarme nesvaaggronden; klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mo80C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D3A7</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; zware zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; zware zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn22A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn86A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkrijke poldervaaggronden; lichte klei, profielverloop 5</se:Name>
                        <se:Title>Kalkrijke poldervaaggronden; lichte klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn35A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; klei, profielverloop 2</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn82C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAD37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; klei, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; klei, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn86C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D37C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkarme poldervaaggronden; klei, profielverloop 5</se:Name>
                        <se:Title>Kalkarme poldervaaggronden; klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Mn85C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; klei, profielverloop 2</se:Name>
                        <se:Title>Knippige poldervaaggronden; klei, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn82C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; klei, profielverloop 3</se:Name>
                        <se:Title>Knippige poldervaaggronden; klei, profielverloop 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn83C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippige poldervaaggronden; lichte zavel, profielverloop 5</se:Name>
                        <se:Title>Knippige poldervaaggronden; lichte zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>gMn15C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippoldervaaggronden; zavel en lichte klei, profielverloop 3</se:Name>
                        <se:Title>Knippoldervaaggronden; zavel en lichte klei, profielverloop 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kMn63C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#327F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Knippoldervaaggronden; zware klei, profielverloop 3</se:Name>
                        <se:Title>Knippoldervaaggronden; zware klei, profielverloop 3</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>kMn43C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#197F49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Name>
                        <se:Title>Leek-/woudeerdgronden; zavel, profielverloop 3, of 3 en 4, of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pRn56</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; klei, profielverloop 5, of 5 en 2, of 2</se:Name>
                        <se:Title>Leek-/woudeerdgronden; klei, profielverloop 5, of 5 en 2, of 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pRn89</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze drechtvaaggronden; profielverloop 1</se:Name>
                        <se:Title>Kalkloze drechtvaaggronden; profielverloop 1</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rv01C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19201E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze nesvaaggronden; zavel en lichte klei</se:Name>
                        <se:Title>Kalkloze nesvaaggronden; zavel en lichte klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ro60C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19AA1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; zavel, profielverloop 2</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; zavel, profielverloop 2</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn52A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; zware klei, profielverloop 3, of 3 en 4 , of 4</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; zware klei, profielverloop 3, of 3 en 4 , of 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn46A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende poldervaaggronden; zware klei, profielverloop 5</se:Name>
                        <se:Title>Kalkhoudende poldervaaggronden; zware klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn45A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; lichte zavel, profielverloop 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; lichte zavel, profielverloop 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn14C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware zavel en lichte klei, profielverloop 4</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware zavel en lichte klei, profielverloop 4</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn94C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; zware klei, profielverloop 5</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; zware klei, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn45C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkloze poldervaaggronden; lichte zavel, profielverloop 5</se:Name>
                        <se:Title>Kalkloze poldervaaggronden; lichte zavel, profielverloop 5</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rn15C</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Kalkhoudende ooivaaggronden; zware zavel en lichte klei</se:Name>
                        <se:Title>Kalkhoudende ooivaaggronden; zware zavel en lichte klei</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Rd90A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; lichte zavel</se:Name>
                        <se:Title>Leek-/woudeerdgronden; lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pKRn1</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; lichte zavel</se:Name>
                        <se:Title>Poldervaaggronden; lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KRn1</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81AA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden, lichte zavel</se:Name>
                        <se:Title>Ooivaaggronden, lichte zavel</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>KRd1</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAAA00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Leek-/woudeerdgronden; zandige leem; colluvium in dal</se:Name>
                        <se:Title>Leek-/woudeerdgronden; zandige leem; colluvium in dal</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>pLn5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; siltige leem in situ</se:Name>
                        <se:Title>Poldervaaggronden; siltige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ln6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Poldervaaggronden; siltige leem; colluvium in dal</se:Name>
                        <se:Title>Poldervaaggronden; siltige leem; colluvium in dal</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Lnd6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AA2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend tussen 0.5 en 0.8 m; siltige leem in situ</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend tussen 0.5 en 0.8 m; siltige leem in situ</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Lh6</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D32049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem; colluvium in dal</se:Name>
                        <se:Title>Ooivaaggronden met roest beginnend dieper dan 0.8 m; zandige leem; colluvium in dal</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>Ldd5</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE2049</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Terrashellinggronden</se:Name>
                        <se:Title>Terrashellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHt</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D34C49</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Löss-, tertiair- en terrashellinggronden</se:Name>
                        <se:Title>Löss-, tertiair- en terrashellinggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AHz</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#D3D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Linge-uiterwaardgronden</se:Name>
                        <se:Title>Linge-uiterwaardgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>ALu</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#32FE1E</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Gronden in oude maasmeanders</se:Name>
                        <se:Title>Gronden in oude maasmeanders</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AMm</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#81D300</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Overslaggronden</se:Name>
                        <se:Title>Overslaggronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AO</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#58D349</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Stuifzandgronden</se:Name>
                        <se:Title>Stuifzandgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AS</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FEFE00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Veen in ontginning</se:Name>
                        <se:Title>Veen in ontginning</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AVo</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#3220FE</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Warmoezerijgronden (ongerijpt)</se:Name>
                        <se:Title>Warmoezerijgronden (ongerijpt)</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AWo</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#33ABA6</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Strandwalgronden</se:Name>
                        <se:Title>Strandwalgronden</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZ1</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#FE7F00</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; zand en lichte zavel, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; zand en lichte zavel, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW1A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#AAFE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:Name>Wieringermeergronden; zware zavel en klei, kalkrijk</se:Name>
                        <se:Title>Wieringermeergronden; zware zavel en klei, kalkrijk</se:Title>
                        <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                            <ogc:PropertyIsEqualTo>
                                <ogc:PropertyName>first_soilcode</ogc:PropertyName>
                                <ogc:Literal>AZW7A</ogc:Literal>
                            </ogc:PropertyIsEqualTo>
                        </ogc:Filter>
                        <se:PolygonSymbolizer>
                            <se:Fill>
                                <se:SvgParameter name="fill">#19FE7C</se:SvgParameter>
                            </se:Fill>
                        </se:PolygonSymbolizer>
                    </se:Rule><se:Rule>
                        <se:TextSymbolizer>
                            <se:Label>
                                <ogc:PropertyName>soil_classification</ogc:PropertyName>
                            </se:Label>
                            <se:Font>
                                <se:SvgParameter name="font-family">MS Shell Dlg 2</se:SvgParameter>
                                <se:SvgParameter name="font-size">13</se:SvgParameter>
                            </se:Font>
                            <se:LabelPlacement>
                                <se:PointPlacement>
                                    <se:AnchorPoint>
                                        <se:AnchorPointX>0</se:AnchorPointX>
                                        <se:AnchorPointY>0.5</se:AnchorPointY>
                                    </se:AnchorPoint>
                                </se:PointPlacement>
                            </se:LabelPlacement>
                            <se:Fill>
                                <se:SvgParameter name="fill">#000000</se:SvgParameter>
                            </se:Fill>
                            <se:VendorOption name="maxDisplacement">1</se:VendorOption>
                        </se:TextSymbolizer>
                    </se:Rule>                  </se:FeatureTypeStyle>
                                </UserStyle>
                            </NamedLayer>
                        </StyledLayerDescriptor>