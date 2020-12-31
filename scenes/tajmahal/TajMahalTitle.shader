shader_type canvas_item;

uniform float cutoff : hint_range(0.0, 1.0);
uniform sampler2D mask: hint_albedo;

void fragment() {
//	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	float value = texture(mask, UV).r;
	if(value < cutoff) {
		COLOR = vec4(COLOR.rgb, 1.0)
	} else {
		COLOR = vec4(COLOR.rgb, 0.0)
	}
}