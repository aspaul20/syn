<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>computeS4_4</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>input1_V_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input1.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>s4_out_V_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s4_out.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>12</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>79</id>
						<name>inn_V_V</name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>87</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>87</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>inn.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>105</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>82</id>
						<name>fc1_V_V</name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>89</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>89</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fc1.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>106</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>85</id>
						<name>fc2_V_V</name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>91</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>91</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fc2.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>107</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>88</id>
						<name>fc3_V_V</name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>93</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>93</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fc3.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>108</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>91</id>
						<name>outStr_V_V</name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>101</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>101</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>outStr.V.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>109</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>96</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>107</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>107</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>111</item>
					<item>112</item>
					<item>113</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>97</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>139</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>139</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>438</item>
					<item>439</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>98</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>140</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>140</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>77</count>
					<item_version>0</item_version>
					<item>119</item>
					<item>120</item>
					<item>121</item>
					<item>134</item>
					<item>135</item>
					<item>136</item>
					<item>137</item>
					<item>138</item>
					<item>139</item>
					<item>140</item>
					<item>141</item>
					<item>142</item>
					<item>143</item>
					<item>144</item>
					<item>145</item>
					<item>146</item>
					<item>147</item>
					<item>148</item>
					<item>149</item>
					<item>150</item>
					<item>151</item>
					<item>152</item>
					<item>153</item>
					<item>154</item>
					<item>155</item>
					<item>156</item>
					<item>157</item>
					<item>158</item>
					<item>159</item>
					<item>160</item>
					<item>161</item>
					<item>162</item>
					<item>163</item>
					<item>164</item>
					<item>165</item>
					<item>166</item>
					<item>167</item>
					<item>168</item>
					<item>169</item>
					<item>170</item>
					<item>171</item>
					<item>172</item>
					<item>173</item>
					<item>174</item>
					<item>175</item>
					<item>176</item>
					<item>177</item>
					<item>178</item>
					<item>179</item>
					<item>180</item>
					<item>181</item>
					<item>182</item>
					<item>183</item>
					<item>184</item>
					<item>185</item>
					<item>186</item>
					<item>187</item>
					<item>188</item>
					<item>189</item>
					<item>190</item>
					<item>191</item>
					<item>192</item>
					<item>193</item>
					<item>194</item>
					<item>195</item>
					<item>196</item>
					<item>197</item>
					<item>198</item>
					<item>199</item>
					<item>200</item>
					<item>201</item>
					<item>202</item>
					<item>203</item>
					<item>204</item>
					<item>205</item>
					<item>437</item>
					<item>440</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>99</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>141</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>141</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>436</item>
					<item>441</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>100</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>145</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>145</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>127</item>
					<item>128</item>
					<item>129</item>
					<item>435</item>
					<item>442</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>101</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>147</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>147</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>131</item>
					<item>132</item>
					<item>133</item>
					<item>434</item>
					<item>443</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>102</id>
						<name></name>
						<fileName>S4_4/Compute.cpp</fileName>
						<fileDirectory>/home/tukl/Amur/IndividualSyn/S4/S4_4</fileDirectory>
						<lineNumber>152</lineNumber>
						<contextFuncName>computeS4_4</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/tukl/Amur/IndividualSyn/S4/S4_4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>S4_4/Compute.cpp</first>
											<second>computeS4_4</second>
										</first>
										<second>152</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_15">
				<Value>
					<Obj>
						<type>2</type>
						<id>104</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>110</id>
						<name>ResizeStream_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:ResizeStream.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_17">
				<Value>
					<Obj>
						<type>2</type>
						<id>114</id>
						<name>StreamingDataWidthCo</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:StreamingDataWidthCo&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_18">
				<Value>
					<Obj>
						<type>2</type>
						<id>118</id>
						<name>FCMac</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FCMac&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>122</id>
						<name>Relu1D_NP</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Relu1D_NP&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>126</id>
						<name>StreamingDataWidthCo_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:StreamingDataWidthCo.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>130</id>
						<name>ResizeStream</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:ResizeStream&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_22">
				<Obj>
					<type>3</type>
					<id>103</id>
					<name>computeS4_4</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>12</count>
					<item_version>0</item_version>
					<item>79</item>
					<item>82</item>
					<item>85</item>
					<item>88</item>
					<item>91</item>
					<item>96</item>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>105</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_23">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>79</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>82</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>85</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>88</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>91</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>110</source_obj>
				<sink_obj>96</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>96</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>96</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>82</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>82</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>122</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>88</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>126</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>88</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>91</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>130</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>91</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>139</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>154</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>160</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>169</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>170</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>171</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>172</id>
				<edge_type>1</edge_type>
				<source_obj>41</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>173</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>174</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>175</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>176</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>177</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>178</id>
				<edge_type>1</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>179</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>180</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>181</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>182</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>183</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>184</id>
				<edge_type>1</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>185</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>186</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>187</id>
				<edge_type>1</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>188</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>189</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>190</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>191</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>192</id>
				<edge_type>1</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>193</id>
				<edge_type>1</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>194</id>
				<edge_type>1</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>195</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>196</id>
				<edge_type>1</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>197</id>
				<edge_type>1</edge_type>
				<source_obj>66</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>198</id>
				<edge_type>1</edge_type>
				<source_obj>67</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>199</id>
				<edge_type>1</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>200</id>
				<edge_type>1</edge_type>
				<source_obj>69</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>201</id>
				<edge_type>1</edge_type>
				<source_obj>70</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>202</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>203</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>204</id>
				<edge_type>1</edge_type>
				<source_obj>73</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>205</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>434</id>
				<edge_type>4</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>435</id>
				<edge_type>4</edge_type>
				<source_obj>99</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>436</id>
				<edge_type>4</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>437</id>
				<edge_type>4</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>438</id>
				<edge_type>4</edge_type>
				<source_obj>96</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>439</id>
				<edge_type>4</edge_type>
				<source_obj>96</source_obj>
				<sink_obj>97</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>440</id>
				<edge_type>4</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>98</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>441</id>
				<edge_type>4</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>99</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>442</id>
				<edge_type>4</edge_type>
				<source_obj>99</source_obj>
				<sink_obj>100</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>443</id>
				<edge_type>4</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>101</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_128">
			<mId>1</mId>
			<mTag>computeS4_4</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>103</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>4873</mMinLatency>
			<mMaxLatency>4873</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_129">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_130">
						<type>0</type>
						<name>ResizeStream_1_U0</name>
						<ssdmobj_id>96</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>2</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_131">
								<port class_id="29" tracking_level="1" version="0" object_id="_132">
									<name>in_V_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_133">
									<type>0</type>
									<name>ResizeStream_1_U0</name>
									<ssdmobj_id>96</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_134">
								<port class_id_reference="29" object_id="_135">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_133"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_136">
						<type>0</type>
						<name>StreamingDataWidthCo_U0</name>
						<ssdmobj_id>97</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_137">
								<port class_id_reference="29" object_id="_138">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_139">
									<type>0</type>
									<name>StreamingDataWidthCo_U0</name>
									<ssdmobj_id>97</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_140">
								<port class_id_reference="29" object_id="_141">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_139"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_142">
						<type>0</type>
						<name>FCMac_U0</name>
						<ssdmobj_id>98</ssdmobj_id>
						<pins>
							<count>74</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_143">
								<port class_id_reference="29" object_id="_144">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_145">
									<type>0</type>
									<name>FCMac_U0</name>
									<ssdmobj_id>98</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_146">
								<port class_id_reference="29" object_id="_147">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_148">
								<port class_id_reference="29" object_id="_149">
									<name>bias25_m_weights_V_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_150">
								<port class_id_reference="29" object_id="_151">
									<name>bias25_m_weights_V_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>bias25_m_weights_V_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>bias25_m_weights_V_3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>bias25_m_weights_V_4</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_158">
								<port class_id_reference="29" object_id="_159">
									<name>bias25_m_weights_V_5</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_160">
								<port class_id_reference="29" object_id="_161">
									<name>bias25_m_weights_V_6</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_162">
								<port class_id_reference="29" object_id="_163">
									<name>bias25_m_weights_V_7</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_164">
								<port class_id_reference="29" object_id="_165">
									<name>bias25_m_weights_V_8</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_166">
								<port class_id_reference="29" object_id="_167">
									<name>bias25_m_weights_V_9</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_168">
								<port class_id_reference="29" object_id="_169">
									<name>bias25_m_weights_V_10</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_170">
								<port class_id_reference="29" object_id="_171">
									<name>bias25_m_weights_V_11</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_172">
								<port class_id_reference="29" object_id="_173">
									<name>bias25_m_weights_V_12</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_174">
								<port class_id_reference="29" object_id="_175">
									<name>bias25_m_weights_V_13</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_176">
								<port class_id_reference="29" object_id="_177">
									<name>bias25_m_weights_V_14</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_178">
								<port class_id_reference="29" object_id="_179">
									<name>bias25_m_weights_V_15</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_180">
								<port class_id_reference="29" object_id="_181">
									<name>bias25_m_weights_V_16</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_182">
								<port class_id_reference="29" object_id="_183">
									<name>bias25_m_weights_V_17</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_184">
								<port class_id_reference="29" object_id="_185">
									<name>bias25_m_weights_V_18</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_186">
								<port class_id_reference="29" object_id="_187">
									<name>bias25_m_weights_V_19</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_188">
								<port class_id_reference="29" object_id="_189">
									<name>bias25_m_weights_V_20</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_190">
								<port class_id_reference="29" object_id="_191">
									<name>bias25_m_weights_V_21</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_192">
								<port class_id_reference="29" object_id="_193">
									<name>bias25_m_weights_V_22</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_194">
								<port class_id_reference="29" object_id="_195">
									<name>bias25_m_weights_V_23</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_196">
								<port class_id_reference="29" object_id="_197">
									<name>bias25_m_weights_V_24</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_198">
								<port class_id_reference="29" object_id="_199">
									<name>bias25_m_weights_V_25</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_200">
								<port class_id_reference="29" object_id="_201">
									<name>bias25_m_weights_V_26</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_202">
								<port class_id_reference="29" object_id="_203">
									<name>bias25_m_weights_V_27</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_204">
								<port class_id_reference="29" object_id="_205">
									<name>bias25_m_weights_V_28</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_206">
								<port class_id_reference="29" object_id="_207">
									<name>bias25_m_weights_V_29</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_208">
								<port class_id_reference="29" object_id="_209">
									<name>bias25_m_weights_V_30</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_210">
								<port class_id_reference="29" object_id="_211">
									<name>bias25_m_weights_V_31</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_212">
								<port class_id_reference="29" object_id="_213">
									<name>bias25_m_weights_V_32</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_214">
								<port class_id_reference="29" object_id="_215">
									<name>bias25_m_weights_V_33</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_216">
								<port class_id_reference="29" object_id="_217">
									<name>bias25_m_weights_V_34</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_218">
								<port class_id_reference="29" object_id="_219">
									<name>bias25_m_weights_V_35</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_220">
								<port class_id_reference="29" object_id="_221">
									<name>bias25_m_weights_V_36</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_222">
								<port class_id_reference="29" object_id="_223">
									<name>bias25_m_weights_V_37</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_224">
								<port class_id_reference="29" object_id="_225">
									<name>bias25_m_weights_V_38</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_226">
								<port class_id_reference="29" object_id="_227">
									<name>bias25_m_weights_V_39</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_228">
								<port class_id_reference="29" object_id="_229">
									<name>bias25_m_weights_V_40</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_230">
								<port class_id_reference="29" object_id="_231">
									<name>bias25_m_weights_V_41</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_232">
								<port class_id_reference="29" object_id="_233">
									<name>bias25_m_weights_V_42</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_234">
								<port class_id_reference="29" object_id="_235">
									<name>bias25_m_weights_V_43</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_236">
								<port class_id_reference="29" object_id="_237">
									<name>bias25_m_weights_V_44</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_238">
								<port class_id_reference="29" object_id="_239">
									<name>bias25_m_weights_V_45</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_240">
								<port class_id_reference="29" object_id="_241">
									<name>bias25_m_weights_V_46</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_242">
								<port class_id_reference="29" object_id="_243">
									<name>bias25_m_weights_V_47</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_244">
								<port class_id_reference="29" object_id="_245">
									<name>bias25_m_weights_V_48</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_246">
								<port class_id_reference="29" object_id="_247">
									<name>bias25_m_weights_V_49</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_248">
								<port class_id_reference="29" object_id="_249">
									<name>bias25_m_weights_V_50</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_250">
								<port class_id_reference="29" object_id="_251">
									<name>bias25_m_weights_V_51</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_252">
								<port class_id_reference="29" object_id="_253">
									<name>bias25_m_weights_V_52</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_254">
								<port class_id_reference="29" object_id="_255">
									<name>bias25_m_weights_V_53</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_256">
								<port class_id_reference="29" object_id="_257">
									<name>bias25_m_weights_V_54</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_258">
								<port class_id_reference="29" object_id="_259">
									<name>bias25_m_weights_V_55</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_260">
								<port class_id_reference="29" object_id="_261">
									<name>bias25_m_weights_V_56</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_262">
								<port class_id_reference="29" object_id="_263">
									<name>bias25_m_weights_V_57</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_264">
								<port class_id_reference="29" object_id="_265">
									<name>bias25_m_weights_V_58</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_266">
								<port class_id_reference="29" object_id="_267">
									<name>bias25_m_weights_V_59</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_268">
								<port class_id_reference="29" object_id="_269">
									<name>bias25_m_weights_V_60</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_270">
								<port class_id_reference="29" object_id="_271">
									<name>bias25_m_weights_V_61</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_272">
								<port class_id_reference="29" object_id="_273">
									<name>bias25_m_weights_V_62</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_274">
								<port class_id_reference="29" object_id="_275">
									<name>bias25_m_weights_V_63</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_276">
								<port class_id_reference="29" object_id="_277">
									<name>weights25_m_weights_7</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_278">
								<port class_id_reference="29" object_id="_279">
									<name>weights25_m_weights_6</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_280">
								<port class_id_reference="29" object_id="_281">
									<name>weights25_m_weights_5</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_282">
								<port class_id_reference="29" object_id="_283">
									<name>weights25_m_weights_4</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_284">
								<port class_id_reference="29" object_id="_285">
									<name>weights25_m_weights_3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_286">
								<port class_id_reference="29" object_id="_287">
									<name>weights25_m_weights_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_288">
								<port class_id_reference="29" object_id="_289">
									<name>weights25_m_weights_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
							<item class_id_reference="28" object_id="_290">
								<port class_id_reference="29" object_id="_291">
									<name>weights25_m_weights_s</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_145"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_292">
						<type>0</type>
						<name>Relu1D_NP_U0</name>
						<ssdmobj_id>99</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_293">
								<port class_id_reference="29" object_id="_294">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_295">
									<type>0</type>
									<name>Relu1D_NP_U0</name>
									<ssdmobj_id>99</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_296">
								<port class_id_reference="29" object_id="_297">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_295"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_298">
						<type>0</type>
						<name>StreamingDataWidthCo_1_U0</name>
						<ssdmobj_id>100</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_299">
								<port class_id_reference="29" object_id="_300">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_301">
									<type>0</type>
									<name>StreamingDataWidthCo_1_U0</name>
									<ssdmobj_id>100</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_302">
								<port class_id_reference="29" object_id="_303">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_301"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_304">
						<type>0</type>
						<name>ResizeStream_U0</name>
						<ssdmobj_id>101</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_305">
								<port class_id_reference="29" object_id="_306">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_307">
									<type>0</type>
									<name>ResizeStream_U0</name>
									<ssdmobj_id>101</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_308">
								<port class_id_reference="29" object_id="_309">
									<name>out_V_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_307"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_310">
						<type>1</type>
						<name>inn_V_V</name>
						<ssdmobj_id>79</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_311">
							<port class_id_reference="29" object_id="_312">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_133"></inst>
						</source>
						<sink class_id_reference="28" object_id="_313">
							<port class_id_reference="29" object_id="_314">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_139"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_315">
						<type>1</type>
						<name>fc1_V_V</name>
						<ssdmobj_id>82</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_316">
							<port class_id_reference="29" object_id="_317">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_139"></inst>
						</source>
						<sink class_id_reference="28" object_id="_318">
							<port class_id_reference="29" object_id="_319">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_320">
						<type>1</type>
						<name>fc2_V_V</name>
						<ssdmobj_id>85</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_321">
							<port class_id_reference="29" object_id="_322">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_145"></inst>
						</source>
						<sink class_id_reference="28" object_id="_323">
							<port class_id_reference="29" object_id="_324">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_295"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_325">
						<type>1</type>
						<name>fc3_V_V</name>
						<ssdmobj_id>88</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_326">
							<port class_id_reference="29" object_id="_327">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_295"></inst>
						</source>
						<sink class_id_reference="28" object_id="_328">
							<port class_id_reference="29" object_id="_329">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_301"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_330">
						<type>1</type>
						<name>outStr_V_V</name>
						<ssdmobj_id>91</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_331">
							<port class_id_reference="29" object_id="_332">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_301"></inst>
						</source>
						<sink class_id_reference="28" object_id="_333">
							<port class_id_reference="29" object_id="_334">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_307"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>79</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>82</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>85</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>88</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>91</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>96</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>97</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>98</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>99</first>
			<second>
				<first>7</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>100</first>
			<second>
				<first>9</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>101</first>
			<second>
				<first>11</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>102</first>
			<second>
				<first>13</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>103</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>13</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_335">
			<region_name>computeS4_4</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>103</item>
			</basic_blocks>
			<nodes>
				<count>28</count>
				<item_version>0</item_version>
				<item>75</item>
				<item>76</item>
				<item>77</item>
				<item>78</item>
				<item>79</item>
				<item>80</item>
				<item>81</item>
				<item>82</item>
				<item>83</item>
				<item>84</item>
				<item>85</item>
				<item>86</item>
				<item>87</item>
				<item>88</item>
				<item>89</item>
				<item>90</item>
				<item>91</item>
				<item>92</item>
				<item>93</item>
				<item>94</item>
				<item>95</item>
				<item>96</item>
				<item>97</item>
				<item>98</item>
				<item>99</item>
				<item>100</item>
				<item>101</item>
				<item>102</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

