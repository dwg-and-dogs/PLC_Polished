def create_outlined_text_svg(text="Inheritance", 
                           font_family="Magneto",
                           font_size=100,
                           fill_color="orange",
                           outline_color="black",
                           outline_width=2):
    
    svg_template = f'''<?xml version="1.0" encoding="UTF-8"?>
<svg viewBox="0 0 400 100" xmlns="http://www.w3.org/2000/svg">
    <defs>
        <filter id="outline">
            <feMorphology in="SourceAlpha" result="thick" operator="dilate" radius="{outline_width}"/>
            <feFlood flood-color="{outline_color}"/>
            <feComposite in2="thick" operator="in"/>
            <feMerge>
                <feMergeNode/>
                <feMergeNode in="SourceGraphic"/>
            </feMerge>
        </filter>
    </defs>
    
    <text x="50%" y="50%" 
          text-anchor="middle" 
          dominant-baseline="middle"
          font-family="{font_family}"
          font-size="{font_size}"
          fill="{fill_color}"
          filter="url(#outline)">
        {text}
    </text>
</svg>'''
    
    return svg_template

# Save to file
with open('outlined_inheritance.svg', 'w') as f:
    svg_content = create_outlined_text_svg(
        text="Inheritance",
        fill_color="orange",
        outline_color="black"
    )
    f.write(svg_content)