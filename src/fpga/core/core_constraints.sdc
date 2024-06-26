#
# user core constraints
#
# put your clock groups in here as well as any net assignments
#

# set_clock_groups -asynchronous \
#  -group { bridge_spiclk } \
#  -group { clk_74a } \
#  -group { clk_74b } \
#  -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk } \
#  -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk } \
#  -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk } \
#  -group { ic|mp2|pll_video_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk } \
-group  { ic|mp2|pll_video_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk }

derive_clock_uncertainty

set_clock_groups -exclusive \
 -group [get_clocks { ic|*|*|altera_pll_i|*[*].*|divclk }] \
 -group [get_clocks { bridge_spiclk }] \
 -group [get_clocks { clk_74a }] \
 -group [get_clocks { clk_74b }]

