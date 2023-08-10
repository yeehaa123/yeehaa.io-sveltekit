defmodule YeehaaWeb.BlobComponents do
  use YeehaaWeb, :html
  import YeehaaWeb.HomepageHelperComponents

  attr(:shape, :integer, default: 1)
  attr(:id, :string, default: nil)
  attr(:class, :string, default: nil)
  attr(:bg_color, :string, default: "sun")
  slot :inner_block

  def blob(assigns) when assigns.shape === 1 do
    ~H"""
    <div id={@id}>
      <svg viewBox="0 0 1728 440" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_130_65)">
          <path
            class="fill-sun"
            d="M-1 440H1728C1728 440 1581.64 396.56 1319.47 218.322C1210.49 144.224 1108.41 0 839.742 0C544.523 0 427.109 178.019 329.818 251.91C232.528 325.801 -1 440 -1 440Z"
          />
        </g>
      </svg>
      <.outer_section class="bg-sun text-curtains">
        <.inner_section class={@class}>
          <%= render_slot(@inner_block) %>
        </.inner_section>
      </.outer_section>
      <svg class="bg-fire" viewBox="0 0 1727 427" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_130_95)">
          <path
            class="fill-sun"
            d="M1727 -20V89.2202C1727 92.573 1726.95 95.9131 1726.84 99.2405C1721.55 270.106 1581.24 407 1408.94 407C1288.36 407 1183.44 339.957 1129.51 241.138C1075.59 339.957 970.672 407 850.086 407C729.499 407 622.514 338.617 569.075 238.191C515.63 338.617 409.833 407 288.058 407C112.399 407 -30 264.722 -30 89.2202C-30 84.6862 -29.9047 80.1714 -29.714 75.6819V-20H1727Z"
          />
        </g>
      </svg>
    </div>
    """
  end

  def blob(assigns) when assigns.shape === 2 do
    ~H"""
    <div id={@id}>
      <.outer_section class="bg-fire text-dark">
        <.inner_section class={@class}>
          <%= render_slot(@inner_block) %>
        </.inner_section>
      </.outer_section>
      <svg class="bg-purp" viewBox="0 0 1728 258" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_130_98)">
          <path
            class="fill-fire"
            d="M1728 0V257.9C1519.41 123.054 1209.32 37.5737 863.078 37.5737C516.84 37.5737 206.595 123.098 -2 258V0H1728Z"
          />
        </g>
      </svg>
    </div>
    """
  end

  def blob(assigns) when assigns.shape === 3 do
    ~H"""
    <div id={@id}>
      <.outer_section class="bg-purp text-white">
        <.inner_section class={@class}>
          <%= render_slot(@inner_block) %>
        </.inner_section>
      </.outer_section>
      <svg class="bg-purp" viewBox="0 0 1728 526" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_130_100)">
          <path
            class="fill-sun"
            d="M0.84307 526V418.607C0.84307 415.31 -1.16112 411.215 0.999159 408.755C145.463 243.925 172.5 106.144 313.297 106.144C431.75 106.144 457.123 269.231 567.79 269.231C678.458 269.231 698.67 0 862.289 0C1064.13 0 1046.51 272.128 1158.34 272.128C1270.18 272.128 1294.78 106.144 1414.4 106.144C1563 106.144 1580.46 220.455 1726.85 418.607C1729.5 422.191 1726.76 427.505 1726.57 431.919V526H0.84307Z"
          />
        </g>
      </svg>
    </div>
    """
  end

  def blob(assigns) when assigns.shape === 4 do
    ~H"""
    <div id={@id}>
      <.outer_section class="bg-sun text-curtains">
        <.inner_section>
          <%= render_slot(@inner_block) %>
        </.inner_section>
      </.outer_section>
      <svg class="bg-sun" viewBox="0 0 1728 690" fill="none" xmlns="http://www.w3.org/2000/svg">
        <g clip-path="url(#clip0_130_106)">
          <path
            class="fill-curtains"
            d="M1747 0V1001H-19V0H-15.422C25.003 383.225 403.3 683.565 864 683.565C1324.7 683.565 1703 383.225 1743.42 0H1747Z"
          />
        </g>
      </svg>
    </div>
    """
  end
end
