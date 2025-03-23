# WeightedMixedDistance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let dataPoints
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mrow>
    <mi mathvariant="fraktur">X</mi>
  </mrow>
  <mo>=</mo>
  <mo fence="false" stretchy="false">{</mo>
  <msub>
    <mi>x</mi>
    <mi>i</mi>
  </msub>
  <mo>&#x2208;</mo>
  <msup>
    <mrow>
      <mi mathvariant="double-struck">R</mi>
    </mrow>
    <mi>m</mi>
  </msup>
  <mo>&#x2223;</mo>
  <mi>i</mi>
  <mo>=</mo>
  <mn>1</mn>
  <mo>,</mo>
  <mn>2</mn>
  <mo>,</mo>
  <mo>&#x22EF;</mo>
  <mo>,</mo>
  <mi>n</mi>
  <mo fence="false" stretchy="false">}</mo>
  <mo>,</mo>
  <mi>m</mi>
  <mo>:=</mo>
  <msub>
    <mi>m</mi>
    <mi>R</mi>
  </msub>
  <mo>+</mo>
  <msub>
    <mi>m</mi>
    <mi>C</mi>
  </msub>
</math>
be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mtable displaystyle="true" rowspacing=".5em" columnwidth="100%" width="85%">
    <mtr>
      <mtd columnalign="left">
        <mtext>WMD</mtext>
        <mo stretchy="false">(</mo>
        <msub>
          <mi>x</mi>
          <mi>i</mi>
        </msub>
        <mo>,</mo>
        <msub>
          <mi>x</mi>
          <mi>j</mi>
        </msub>
        <mo stretchy="false">)</mo>
        <mo>=</mo>
        <mfrac>
          <mn>1</mn>
          <mi>m</mi>
        </mfrac>
        <mrow data-mjx-texclass="INNER">
          <mo data-mjx-texclass="OPEN">[</mo>
          <msub>
            <mi>w</mi>
            <mi>R</mi>
          </msub>
          <mo>&#xD7;</mo>
          <munderover>
            <mo data-mjx-texclass="OP">&#x2211;</mo>
            <mrow>
              <mi>k</mi>
              <mo>=</mo>
              <mn>1</mn>
            </mrow>
            <mrow>
              <msub>
                <mi>m</mi>
                <mi>R</mi>
              </msub>
            </mrow>
          </munderover>
          <msubsup>
            <mi>d</mi>
            <mrow>
              <mi>i</mi>
              <mi>j</mi>
              <mi>k</mi>
            </mrow>
            <mrow>
              <mi>m</mi>
              <mi>x</mi>
            </mrow>
          </msubsup>
          <mo>+</mo>
          <msub>
            <mi>w</mi>
            <mi>C</mi>
          </msub>
          <mo>&#xD7;</mo>
          <munderover>
            <mo data-mjx-texclass="OP">&#x2211;</mo>
            <mrow>
              <mi>k</mi>
              <mo>=</mo>
              <mn>1</mn>
            </mrow>
            <mrow>
              <msub>
                <mi>m</mi>
                <mi>C</mi>
              </msub>
            </mrow>
          </munderover>
          <msubsup>
            <mi>d</mi>
            <mrow>
              <mi>i</mi>
              <mi>j</mi>
              <mi>k</mi>
            </mrow>
            <mrow>
              <mi>m</mi>
              <mi>x</mi>
            </mrow>
          </msubsup>
          <mo data-mjx-texclass="CLOSE">]</mo>
        </mrow>
        <mo>,</mo>
      </mtd>
    </mtr>
    <mtr>
      <mtd columnalign="right">
        <msubsup>
          <mi>d</mi>
          <mrow>
            <mi>i</mi>
            <mi>j</mi>
            <mi>k</mi>
          </mrow>
          <mrow>
            <mi>m</mi>
            <mi>x</mi>
          </mrow>
        </msubsup>
        <mo>:=</mo>
        <mrow data-mjx-texclass="INNER">
          <mo data-mjx-texclass="OPEN">{</mo>
          <mtable columnalign="left left" columnspacing="1em" rowspacing=".2em">
            <mtr>
              <mtd>
                <msqrt>
                  <mn>1</mn>
                  <mo>&#x2212;</mo>
                  <mfrac>
                    <mrow>
                      <msub>
                        <mi>x</mi>
                        <mi>i</mi>
                      </msub>
                      <mo>&#x22C5;</mo>
                      <msub>
                        <mi>x</mi>
                        <mi>j</mi>
                      </msub>
                    </mrow>
                    <mrow>
                      <mo data-mjx-texclass="ORD" fence="false" stretchy="false">&#x2225;</mo>
                      <msub>
                        <mi>x</mi>
                        <mi>i</mi>
                      </msub>
                      <mo data-mjx-texclass="ORD">&#x2225;</mo>
                      <mo data-mjx-texclass="ORD">&#x2225;</mo>
                      <msub>
                        <mi>x</mi>
                        <mi>j</mi>
                      </msub>
                      <mo data-mjx-texclass="ORD" fence="false" stretchy="false">&#x2225;</mo>
                    </mrow>
                  </mfrac>
                </msqrt>
              </mtd>
              <mtd>
                <mrow>
                  <mtext>if&#xA0;</mtext>
                  <mrow>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>i</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                  </mrow>
                  <mtext>&#xA0;and&#xA0;</mtext>
                  <mrow>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>j</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                  </mrow>
                  <mtext>&#xA0;are numerical</mtext>
                </mrow>
              </mtd>
            </mtr>
            <mtr>
              <mtd>
                <mn>0</mn>
              </mtd>
              <mtd>
                <mrow>
                  <mtext>if&#xA0;</mtext>
                  <mrow>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>i</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                    <mo>=</mo>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>j</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                  </mrow>
                  <mtext>&#xA0;(categorical)</mtext>
                </mrow>
              </mtd>
            </mtr>
            <mtr>
              <mtd>
                <mn>1</mn>
              </mtd>
              <mtd>
                <mrow>
                  <mtext>if&#xA0;</mtext>
                  <mrow>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>i</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                    <mo>&#x2260;</mo>
                    <msub>
                      <mi>x</mi>
                      <mrow>
                        <mi>j</mi>
                        <mi>k</mi>
                      </mrow>
                    </msub>
                  </mrow>
                  <mtext>&#xA0;(categorical)</mtext>
                </mrow>
              </mtd>
            </mtr>
          </mtable>
          <mo data-mjx-texclass="CLOSE" fence="true" stretchy="true" symmetric="true"></mo>
        </mrow>
      </mtd>
    </mtr>
  </mtable>
</math>
where $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.