<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2017-03-23 20:57:59 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_7" name="Constant flux (reversible)" type="PreDefined" reversible="true">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:25:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T10:07:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="2 Reactants, 1 Inhibitor_1" type="UserDefined" reversible="true">
      <Expression>
        Vf*species_12*s2*(K^parameter_1/(s34^parameter_1+K^parameter_1))-Vr*s3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="s2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="s3" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_270" name="s34" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_254" name="species_12" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="2 Reactants, 2 Inhibitors_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-11T21:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s11*s13*(K1^parameter_1/(s34^parameter_1+K1^parameter_1))*(K2^parameter_1/(s83^parameter_1+K2^parameter_1))-Vr*s14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Vf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="parameter_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="s11" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="s13" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="s14" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_278" name="s34" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="s83" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="1 Reactant, 2 Inhibitors, 2  Activators_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-10T10:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s67*(K1^parameter_1/(s54^parameter_1+K1^parameter_1))*(K2^parameter_1/(s35^parameter_1+K2^parameter_1))*(s14^parameter_1/(s14^parameter_1+K3^parameter_1)+s59^parameter_1/(s59^parameter_1+K4^parameter_1))-Vr*s21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="K3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="K4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="Vf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="parameter_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="s14" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="s21" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_290" name="s35" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_269" name="s54" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="s59" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="s67" order="12" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="2 Reactants, 1 Inhibitor_2" type="UserDefined" reversible="true">
      <Expression>
        Vf*s22*s24*(K^parameter_1/(s29^parameter_1+K^parameter_1))-Vr*s25
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="s22" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="s24" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="s25" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_277" name="s29" order="7" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="1 Reactant, 3 Inhibitors, 3  Activators_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-11T21:07:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*species_5*(K1^parameter_1/(species_14^parameter_1+K1^parameter_1))*(K2^parameter_1/(s49^parameter_1+K2^parameter_1))*(K3^parameter_1/(s83^parameter_1+K3^parameter_1))*(s21^parameter_1/(s21^parameter_1+K4^parameter_1)+s20^parameter_1/(s20^parameter_1+K5^parameter_1)+s27^parameter_1/(s27^parameter_1+K6^parameter_1))-Vr*s68
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="K3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="K4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="K5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="K6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="Vf" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Vr" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="parameter_1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="s20" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="s21" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="s27" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="s49" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="s68" order="13" role="product"/>
        <ParameterDescription key="FunctionParameter_315" name="s83" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="species_14" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="species_5" order="16" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="1 Reactant, 2 Inhibitors, 1  Activator_1" type="UserDefined" reversible="true">
      <Expression>
        Vf*s69*(K1^parameter_1/(s83^parameter_1+K1^parameter_1))*(K2^parameter_1/(s29^parameter_1+K2^parameter_1))*(1+s25^parameter_1/(s25^parameter_1+K3^parameter_1))-Vr*s28
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="K3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="Vf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="Vr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="parameter_1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="s25" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="s28" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_308" name="s29" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="s69" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="s83" order="10" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="1 Reactant, 2 Activators_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-07T18:59:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s79*(s26^parameter_1/(s26^parameter_1+K1^parameter_1))*(s27^parameter_1/(s27^parameter_1+K2^parameter_1))-Vr*s29
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="Vf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="parameter_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="s26" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="s27" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="s29" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_333" name="s79" order="8" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="2 Reactants, 1 Inhibitor_3" type="UserDefined" reversible="true">
      <Expression>
        Vf*s30*s32*(K^parameter_1/(s29^parameter_1+K^parameter_1))-Vr*s33
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="s29" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="s30" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="s32" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="s33" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="1 Reactant, 2 Inhibitors, 3 Activators_2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T13:12:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*species_15*(K1^parameter_1/(s26^parameter_1+K1^parameter_1))*(K2^parameter_1/(species_13^parameter_1+K2^parameter_1))*(s31^parameter_1/(s31^parameter_1+K3^parameter_1)+s35^parameter_1/(s35^parameter_1+K4^parameter_1)+s39^parameter_1/(s39^parameter_1+K5^parameter_1))-Vr*s31
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="K3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="K4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="K5" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="Vf" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="Vr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="parameter_1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="s26" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="s31" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_362" name="s35" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_366" name="s39" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_356" name="species_13" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_347" name="species_15" order="13" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="1 Reactant, 1 inhibitor, 1 activator_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-16T17:27:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s82*(K^parameter_1/(s25^parameter_1+K^parameter_1))*(s33^n1/(s33^n1+K1^n1))-Vr*s34
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="K1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="Vf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="n1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="parameter_1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="s25" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="s33" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="s34" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_367" name="s82" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="1 Reactant, 1 Activator_2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T12:33:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s77*(1+s38^parameter_1/(s38^parameter_1+K^parameter_1))-Vr*s39
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="s38" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="s39" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_373" name="s77" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="1 Reactant, 1 Inhibitor, 4  Activators_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-16T14:17:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s76*(K^parameter_1/(s83^parameter_1+K^parameter_1))*(s54^parameter_1/(s54^parameter_1+K1^parameter_1)+s59^parameter_1/(s59^parameter_1+K2^parameter_1)+s63^parameter_1/(s63^parameter_1+K3^parameter_1)+s48^parameter_1/(s48^parameter_1+K4^parameter_1))-Vr*s49
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="K1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="K2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="K3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="K4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="Vf" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="Vr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="parameter_1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="s48" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_403" name="s49" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_385" name="s54" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_389" name="s59" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_393" name="s63" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="s76" order="13" role="substrate"/>
        <ParameterDescription key="FunctionParameter_383" name="s83" order="14" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="2 Reactants, 1 Inhibitor, 1  Activator_1" type="UserDefined" reversible="true">
      <Expression>
        Vf*s51*s53*(K^parameter_1/(s39^parameter_1+K^parameter_1))*(1+species_3^parameter_1/(species_3^parameter_1+K1^parameter_1))-Vr*s54
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="K1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="Vf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="parameter_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="s39" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_400" name="s51" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="s53" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="s54" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="species_3" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="2 Reactants, 1 Inhibitor_4" type="UserDefined" reversible="true">
      <Expression>
        Vf*s57*s58*(K^parameter_1/(s27^parameter_1+K^parameter_1))-Vr*s59
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="s27" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_405" name="s57" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="s58" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="s59" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="2 Reactants, 1 Inhibitor, 1  Activator_2" type="UserDefined" reversible="true">
      <Expression>
        Vf*species_9*species_8*(K^parameter_1/(s83^parameter_1+K^parameter_1))*(1+s48^parameter_1/(s48^parameter_1+K1^parameter_1))-Vr*s57
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="K1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="Vf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="parameter_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="s48" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_426" name="s57" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_418" name="s83" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="species_8" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="species_9" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="1 Reactant, 1 Activator_3" type="UserDefined" reversible="true">
      <Expression>
        Vf*species_6*(1+s49^parameter_1/(s49^parameter_1+K^parameter_1))-Vr*s52
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="Vr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="s49" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_430" name="s52" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_423" name="species_6" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="1 Reactant, 1 Inhibitor, 3  Activators_2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:13:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*species_7*(K^parameter_1/(s83^parameter_1+K^parameter_1))*(s59^parameter_1/(s59^parameter_1+K1^parameter_1)+s50^parameter_1/(s50^parameter_1+K2^parameter_1)+s21^parameter_1/(s21^parameter_1+K3^parameter_1))-Vr*s73
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_417" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="K1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="K2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="K3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="Vf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="Vr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="parameter_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="s21" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_439" name="s50" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_435" name="s59" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_449" name="s73" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_433" name="s83" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_413" name="species_7" order="12" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Pool coupling_1" type="UserDefined" reversible="true">
      <Expression>
        V*(species_16^parameter_1/(species_16^parameter_1+species_12^parameter_1+0.001)-k*species_12)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="species_12" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_446" name="species_16" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Pool coupling_2" type="UserDefined" reversible="true">
      <Expression>
        V*(species_17^parameter_1/(species_17^parameter_1+s11^parameter_1+0.001)-k*s11)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="s11" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_440" name="species_17" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Pool coupling_3" type="UserDefined" reversible="true">
      <Expression>
        V*(species_18^parameter_1/(species_18^parameter_1+s22^parameter_1+0.001)-k*s22)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_452" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="s22" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_421" name="species_18" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Pool coupling_4" type="UserDefined" reversible="true">
      <Expression>
        V*(species_19^parameter_1/(species_19^parameter_1+s51^parameter_1+0.001)-k*s51)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="s51" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="species_19" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Pool coupling_5" type="UserDefined" reversible="true">
      <Expression>
        V*(species_20^parameter_1/(species_20^parameter_1+s55^parameter_1+0.001)-k*s55)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_466" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="s55" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_458" name="species_20" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Pool coupling_6" type="UserDefined" reversible="true">
      <Expression>
        V*(species_21^parameter_1/(species_21^parameter_1+s73^parameter_1+0.001)-k*s73)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_467" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="s73" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_463" name="species_21" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Pool coupling_7" type="UserDefined" reversible="true">
      <Expression>
        V*(species_22^parameter_1/(species_22^parameter_1+species_2^parameter_1+0.001)-k*species_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_472" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="species_2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_468" name="species_22" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Pool coupling_8" type="UserDefined" reversible="true">
      <Expression>
        V*(species_23^parameter_1/(species_23^parameter_1+s90^parameter_1+0.001)-k*s90)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_477" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="s90" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_473" name="species_23" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Pool coupling_9" type="UserDefined" reversible="true">
      <Expression>
        V*(species_24^parameter_1/(species_24^parameter_1+s89^parameter_1+0.001)-k*s89)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_482" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="s89" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_478" name="species_24" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Pool coupling_10" type="UserDefined" reversible="true">
      <Expression>
        V*(species_25^parameter_1/(species_25^parameter_1+s87^parameter_1+0.001)-k*s87)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_487" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_491" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="s87" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_483" name="species_25" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Pool coupling_11" type="UserDefined" reversible="true">
      <Expression>
        V*(species_26^parameter_1/(species_26^parameter_1+s30^parameter_1+0.001)-k*s30)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_492" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="s30" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_488" name="species_26" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Rate Law for GAPDH Enolase" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:18:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        -((Vmr)*(P1*P2*P3/Kmr - S1*Cpi*S2*S3/(Keq*Kmf)))/(1+(P1*P2*P3)/Kmr + (S1*Cpi*S2*S3/Kmf))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_497" name="Vmr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="Kmr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="P1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_490" name="P2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_499" name="P3" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_503" name="S1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_505" name="Cpi" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="S2" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_509" name="S3" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_511" name="Keq" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="Kmf" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Rate Law for Lactate Export" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:30:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        -Vm*(P-S)/(Km+(P+S))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_514" name="Vm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_506" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_502" name="Km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Rate Law for Cpt1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:19:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (A1+A2)/(I+0.1)*sf*Vf*((S1*S2)/(Km1*Km2))/(1+S1/Km1+P/Km3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_495" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="Vf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="S1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_520" name="S2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_522" name="Km1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="Km2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_528" name="Km3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="A1" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_508" name="A2" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_498" name="I" order="10" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Rate Law for Cpt2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:55:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S/Km1-P1*P2/(Km2*Km3))/(1+S/Km1+P1/Km2+P2/Km3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_529" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_517" name="Km1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="P1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_504" name="P2" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_531" name="Km2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="Km3" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Rate Law for 16acylCoA Dehydrogenase" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T12:02:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V/I*(S/Km1-P/(Km2*Keq))/(1+S/Km1+P/Km2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_534" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_515" name="I" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_523" name="S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_535" name="Km1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="P" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_539" name="Km2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="Keq" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Rate Law for Crotonase" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T12:12:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S1*S2/(Km1*Km2)-P1*P2/(Km3*Km4*Keq))/((1+S1/Km1+P1/Km3)*(1+S2/Km2+P2/Km4))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_542" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="S1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_512" name="S2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_543" name="Km1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="Km2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_547" name="P1" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_549" name="P2" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_551" name="Km3" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="Km4" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="Keq" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Rate Law for 10MCKAT" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T12:24:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S/Km1-P1*P2/(Km2*Km3*Keq))/((1+S/Km1+P1/Km2+P2/Km3)*(1+P2/Km3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="Km1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="P1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_540" name="P2" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_558" name="Km2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="Km3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="Keq" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Rate Law for 10MTP" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T12:39:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S1*S2/(Km1*Km2)-(P1*P2*P3)/(Km3*Km4*Km5*Keq))/((1+S1/Km1+P1/Km3+M1/Km6)*(1+S2/Km2+P2/Km4)*(1+P3/Km5))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_563" name="sf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="S1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_546" name="S2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_554" name="Km1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="Km2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="P1" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_569" name="P2" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_571" name="P3" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_573" name="Km3" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_575" name="Km4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="Km5" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="Keq" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="M1" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_583" name="Km6" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Rate Law for TGL Synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:28:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*(S1+S2+S3)/(1+P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_584" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="S1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_576" name="S2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_572" name="S3" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="P" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Rate Law for GlycerolPhosphate" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:30:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S+k2*S2/(k3+P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_566" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_574" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_582" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="S2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_557" name="k3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_585" name="P" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:48:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vm*(PS)/((PS)+Km)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_586" name="Vm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_532" name="PS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="Km" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="PI PFK FBA" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:33:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmf*S/(Kmf+S)*((PS)/((PSi)+(PS)))-Vmr*P/(Kmr+P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_570" name="Vmf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_588" name="Kmf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="PS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="PSi" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="Vmr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="P" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_598" name="Kmr" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="ADP Conversion" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T09:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*S1*S2/(P1*P2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_599" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="S1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_591" name="S2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_587" name="P1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_600" name="P2" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Rate Law for TGL Hydrolysis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:16:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S*A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_601" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_597" name="A" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:35:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*S*RS/P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_602" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_604" name="RS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="P" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Hk" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:24:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vm*S/(Km+S)*((PS)/((PSi)+(PS)))*(k2/I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_607" name="Vm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="PS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="PSi" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="k2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="I" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="1 Reactant, 2 Inhibitors, 3  Activators new" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:17:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s75*(K1^parameter_1/(s40^parameter_1+K1^parameter_1))*(K2^parameter_1/(s83^parameter_1+K2^parameter_1))*(s49^parameter_1/(s49^parameter_1+K3^parameter_1)+s45^parameter_1/(s45^parameter_1+K4^parameter_1)+s46^parameter_1/(s46^parameter_1+K5^parameter_1))-Vr*s50
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_617" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="s75" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_609" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="s40" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_621" name="K2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="s83" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_625" name="s49" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_627" name="K3" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_629" name="s45" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_631" name="K4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="s46" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_635" name="K5" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_637" name="Vr" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_639" name="s50" order="14" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="2 Reactants, 1 Inhibitor, 3 Activators new" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T09:53:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s85*s86*(K^parameter_1/(s25^parameter_1+K^parameter_1))*(1+s33^parameter_1/(s33^parameter_1+K1^parameter_1)+s34^parameter_1/(s34^parameter_1+K2^parameter_1)+s35^parameter_1/(s35^parameter_1+K3^parameter_1))-Vr*s83
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_640" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="s85" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_632" name="s86" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_628" name="K" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="parameter_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_620" name="s25" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_593" name="s33" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_615" name="K1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="s34" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_644" name="K2" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="s35" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_648" name="K3" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="Vr" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="s83" order="13" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="1 Reactant, 3 Inhibitors, 6  Activators" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T09:57:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s78*(K1^parameter_1/(s34^parameter_1+K1^parameter_1))*(K2^parameter_1/(s49^parameter_1+K2^parameter_1))*(K3^parameter_1/(s48^parameter_1+K3^parameter_1))*(s45^parameter_1/(s45^parameter_1+K4^parameter_1)+s26^parameter_1/(s26^parameter_1+K5^parameter_1)+s39^parameter_1/(s39^parameter_1+K6^parameter_1)+s83^parameter_1/(s83^parameter_1+K7^parameter_1)+(s84/(s85+B))^parameter_1/((s84/(s85+B))^parameter_1+K8^parameter_1)+s86^parameter_1/(s86^parameter_1+K9^parameter_1))-Vr*s40
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_653" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="s78" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_645" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_641" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="s34" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="K2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_634" name="s49" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_654" name="K3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="s48" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_658" name="s45" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_660" name="K4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="s26" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_664" name="K5" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_666" name="s39" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_668" name="K6" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_670" name="s83" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_672" name="K7" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="s84" order="17" role="modifier"/>
        <ParameterDescription key="FunctionParameter_676" name="s85" order="18" role="modifier"/>
        <ParameterDescription key="FunctionParameter_680" name="K8" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="s86" order="20" role="modifier"/>
        <ParameterDescription key="FunctionParameter_684" name="K9" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_686" name="Vr" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_688" name="s40" order="23" role="product"/>
        <ParameterDescription key="FunctionParameter_678" name="B" order="24" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="1 sub 1 inh 1 act" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T10:07:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        Vf*S*(K1/(I1+K1))*(A1/(A1+K2))-Vr*P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_685" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_681" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="I1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_673" name="A1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_669" name="K2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_665" name="Vr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="P" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Rate Law for Lactate Dehydrogenase2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:27:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        -(Vmr/Kmr*(P1*P2-S1*S2/Keq))/(1+(P1*P2/Kmr)+(S1*S2/Kmf))*(A1/(I1+I2+I3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_659" name="Vmr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_667" name="Kmr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="P1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_683" name="P2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_657" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_638" name="S2" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_622" name="Keq" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="Kmf" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_651" name="A1" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_691" name="I1" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_693" name="I2" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_695" name="I3" order="11" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Rate Law for reaction_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:50:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*A1/(K1+A1)-Vr*P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_696" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_692" name="A1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_647" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="Vr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_687" name="P" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:20:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*S*mp1/P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_679" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_694" name="mp1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="P" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Rate Law for Glucose transport2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:40:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vm*M*mp1*(S-P)/(Km+(S+P))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_697" name="Vm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_690" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_698" name="mp1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_700" name="S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_702" name="P" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_704" name="Km" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_5" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:10:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf+m1*m2)*(0.1/m3)*s81*(K1^parameter_1/(s27^parameter_1+K1^parameter_1))*(K2^parameter_1/(s49^parameter_1+K2^parameter_1))*(K3^parameter_1/(s45^parameter_1+K3^parameter_1))*(s34^parameter_1/(s34^parameter_1+K4^parameter_1)+s83^parameter_1/(s83^parameter_1+K5^parameter_1))-Vr*s35
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_705" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="m1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_655" name="m2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="m3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_708" name="s81" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_710" name="K1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_712" name="parameter_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="s27" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_716" name="K2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_718" name="s49" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_720" name="K3" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="s45" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_724" name="s34" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_726" name="K4" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_728" name="s83" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_730" name="K5" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_732" name="Vr" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_734" name="s35" order="17" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="1sub3inh4act" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T09:45:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s80*(K1^parameter_1/(s45^parameter_1+K1^parameter_1))*(K2^parameter_1/(s49^parameter_1+K2^parameter_1))*(s21^parameter_1/(s21^parameter_1+K3^parameter_1)+s26^parameter_1/(s26^parameter_1+K4^parameter_1)+s27^parameter_1/(s27^parameter_1+K5^parameter_1)+s28^parameter_1/(s28^parameter_1+K6^parameter_1))*(K7^parameter_1/(I1^parameter_1+K7^parameter_1))-Vr*s27
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_735" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_731" name="s80" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_727" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_723" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_719" name="s45" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_715" name="K2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="s49" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_707" name="s21" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_699" name="K3" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="s26" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_738" name="K4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="s27" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_742" name="K5" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_744" name="s28" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_746" name="K6" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_748" name="K7" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="I1" order="16" role="modifier"/>
        <ParameterDescription key="FunctionParameter_752" name="Vr" order="17" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="2 Reactants, 3 Inhibitors, 2 Activators" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-11T21:08:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*species_5*(K1^parameter_1/(species_14^parameter_1+K1^parameter_1))*(K2^parameter_1/(s49^parameter_1+K2^parameter_1))*(K3^parameter_1/(s83^parameter_1+K3^parameter_1))*(s21^parameter_1/(s21^parameter_1+K4^parameter_1)+s27^parameter_1/(s27^parameter_1+K6^parameter_1))-Vr*s68
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_753" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="species_5" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_745" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_741" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_737" name="species_14" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_671" name="K2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="s49" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="K3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_729" name="s83" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_754" name="s21" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_756" name="K4" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_758" name="s27" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_760" name="K6" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_762" name="Vr" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_764" name="s68" order="14" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="1 Reactant, 1 Inhibitor, 2 Activators" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-16T17:27:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*species_7*(K^parameter_1/(s83^parameter_1+K^parameter_1))*(s59^parameter_1/(s59^parameter_1+K1^parameter_1)+s50^parameter_1/(s50^parameter_1+K2^parameter_1))-Vr*s73
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_765" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_761" name="species_7" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_757" name="K" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_733" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_717" name="s83" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="s59" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_743" name="K1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_751" name="s50" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_767" name="K2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_769" name="Vr" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_771" name="s73" order="10" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="1 Reactant, 1 Inhibitor, 5 Activators" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:49:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf*s76*(K^parameter_1/(s83^parameter_1+K^parameter_1))*(s54^parameter_1/(s54^parameter_1+K1^parameter_1)+s59^parameter_1/(s59^parameter_1+K2^parameter_1)+s63^parameter_1/(s63^parameter_1+K3^parameter_1)+s48^parameter_1/(s48^parameter_1+K4^parameter_1)+s70^parameter_1/(s70^parameter_1+K5^parameter_1))-Vr*s49
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_772" name="Vf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_768" name="s76" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_747" name="K" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_709" name="parameter_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_755" name="s83" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="s54" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_774" name="K1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_776" name="s59" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_778" name="K2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_780" name="s63" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_782" name="K3" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_784" name="s48" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_786" name="K4" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_788" name="s70" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_790" name="K5" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_792" name="Vr" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_794" name="s49" order="16" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_3" name="Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_3">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doid/DOID:104"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/10090"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/23592971"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-05-09T14:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Chelliah</vCard:Family>
                <vCard:Given>Vijayalakshmi</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>acarbo@vbi.vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Carbo</vCard:Family>
                <vCard:Given>Adria</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Center for Modeling Immunity to Enteric Pathogens</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-10T11:12:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1304230001"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000451"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030217"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045222"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000545"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity</div>
    <div class="dc:description">
      <p>CD4+ T cells can differentiate into different phenotypes
 depending on the cytokine milieu. Here a computational and mathematical model with sixty ordinary differential equations representing a CD4+ T cell differentiating into either Th1, Th2, Th17 or iTreg cells, has been constructed. 
 The model includes cytokines,
 nuclear receptors and transcription factors that define fate
 and function of CD4+ T cells. Computational simulations
 illustrate how a proinflammatory Th17 cell can undergo
 reprogramming into an anti-inflammatory iTreg phenotype
 following PPARc activation.</p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/23592971" title="Access to this publication">Systems Modeling of Molecular Mechanisms Controlling Cytokine-driven CD4+ T Cell Differentiation and Phenotype Plasticity.</a>
      </div>
      <div class="bibo:authorList">Carbo A, Hontecillas R, Kronsteiner B, Viladomiu M, Pedragosa M, Lu P, Philipson CW, Hoops S, Marathe M, Eubank S, Bisset K, Wendelsdorf K, Jarrah A, Mei Y, Bassaganya-Riera J</div>
      <div class="bibo:Journal">PLoS Computational Biology [2013, 9(4):e1003027]</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Differentiation of CD4+ T cells into effector or regulatory phenotypes is tightly controlled by the cytokine milieu, complex intracellular signaling networks and numerous transcriptional regulators. We combined experimental approaches and computational modeling to investigate the mechanisms controlling differentiation and plasticity of CD4+ T cells in the gut of mice. Our computational model encompasses the major intracellular pathways involved in CD4+ T cell differentiation into T helper 1 (Th1), Th2, Th17 and induced regulatory T cells (iTreg). Our modeling efforts predicted a critical role for peroxisome proliferator-activated receptor gamma (PPARγ) in modulating plasticity between Th17 and iTreg cells. PPARγ regulates differentiation, activation and cytokine production, thereby controlling the induction of effector and regulatory responses, and is a promising therapeutic target for dysregulated immune responses and inflammation. Our modeling efforts predict that following PPARγ activation, Th17 cells undergo phenotype switch and become iTreg cells. This prediction was validated by results of adoptive transfer studies showing an increase of colonic iTreg and a decrease of Th17 cells in the gut mucosa of mice with colitis following pharmacological activation of PPARγ. Deletion of PPARγ in CD4+ T cells impaired mucosal iTreg and enhanced colitogenic Th17 responses in mice with CD4+ T cell-induced colitis. Thus, for the first time we provide novel molecular evidence in vivo demonstrating that PPARγ in addition to regulating CD4+ T cell differentiation also plays a major role controlling Th17 and iTreg plasticity in the gut mucosa.</p>
      </div>
    </div>
    <div class="bm:modification">
      <p>
        <b>Author&apos;s comment:</b>
            CD4+ T cell computational model (Version 1.4)
Steady state corrected. There was a problem in the internalization of IL-17 in its mathematical function.        </p>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified
by:        <a href="http://identifiers.org/biomodels.db/MODEL1304230001">MODEL1304230001</a>
            .        </p>
    <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource
for published quantitative kinetic models</a>
            .        </p>
</div><div class="dc:license">
  <p>To the extent possible under law, all copyright and related or
neighbouring rights to this encoded model have been dedicated to the public
domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain
Dedication</a>
            for more information.        </p>
</div>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="default" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="T Helper Cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0002417" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="eIFNg" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01580" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IFNg_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="eIL12" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43431" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL12_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="eIL21" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9ES17" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL21_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="eIL23" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9EQ14" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL23_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="eIL4" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P07750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL4_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="eTGFb" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04202" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TGFb_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="eIL2" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL2_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="eIL6" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08505" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL6_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="eIL17" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR010345" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL17_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="eIL10" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P18893" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL10_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="eIL18" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70380" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL18_pool],Reference=InitialConcentration&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="anti-IL4" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:62871" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="anti-IFNg" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:62871" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="pIL4" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:09:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P07750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="IL18_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:10:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70380" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="IL12_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:10:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43431" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="IFNg_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:21:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01580" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="IL21_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:10:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9ES17" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="IL23_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:10:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9EQ14" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="IL17_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:10:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR010345" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="IL10_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:21:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P18893" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="IL6_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:11:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08505" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="IL2_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:11:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="TGFb_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:22:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04202" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="IL4_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:11:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P07750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="pIL10" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:09:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P18893" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="ABA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:45:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="LANCL2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="LANCL2-ABA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T09:27:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Glucose" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:20:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="eGlucose" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:20:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="G6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:20:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="AMPK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:17:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="GAP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:21:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="PEP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:21:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="Pyruvate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:21:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="Lactate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:21:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="NLRX1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_77" name="eLactate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="Acetyl-CoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="HIF1a" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-10-14T10:10:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="CIT" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:08:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="OAA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:45:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="AKG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:20:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="SUC" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_91" name="MAL" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_93" name="iHIF1a" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_95" name="PD1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_97" name="PD1-PDL1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_99" name="PDL1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_101" name="iAMPK" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_103" name="FA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:12:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="iNLRX1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_107" name="ADP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:19:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="ATP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:22:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="NAD" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:25:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="NADH" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:25:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="16AcylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_117" name="16AcylCarn" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:29:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="Carnitine" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:25:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="m16AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="16EnoylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:29:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="14EnoylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:36:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="m14AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="12EnoylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-10T10:15:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="m12AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="10EnoylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:31:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="m10AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="8EnoylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_139" name="m8AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="6EnoylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_143" name="m6AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="4EnoylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_147" name="m4AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="14AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:32:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="12AcylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_153" name="10AcylCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:31:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="8AcylCoA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_157" name="16KetoAcyl" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_159" name="14KetoAcyl" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_161" name="12KetoAcyl" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_161">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T14:21:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="10KetoAcyl" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_163">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:31:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="8KetoAcyl" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_167" name="6KetoAcyl" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_169" name="4KetoAcyl" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_171" name="eFA" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_171">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:12:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="Glycerol" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_175" name="eGlycerol" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_175">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:15:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="TGL" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_179" name="GR3P" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_181" name="2KetoAcyl" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_181">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:03:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_183" name="eIL17_pool" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_183">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:34:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_185" name="eTNFa" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_185">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_187" name="TNFa_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_187">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:25:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_189" name="eTNFa_pool" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_189">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:25:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_191" name="species_1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_193" name="species_2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_195" name="eIL22" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_195">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:30:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_197" name="IL22_pool" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_197">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_199" name="eIL22_pool" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_199">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:41:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_201" name="species_3" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_203" name="IL-22" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_205" name="IL-22R" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_207" name="IL6-IL6R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_207">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08505" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P22272" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00560" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_209" name="IL6R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_209">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P22272" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00560" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_211" name="IL6" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_211">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:34:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08505" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_213" name="TGFb-TGFbR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_213">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:22:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04202" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q64729" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_215" name="TGFbR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_215">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q64729" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_217" name="TGFb" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_217">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04202" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="IL2-IL2R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_219">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01590" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04351" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_221" name="IL2R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_221">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01590" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_223" name="IL2" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_223">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_225" name="IL4-IL4R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_225">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P07750" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P16382" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_227" name="IL4R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_227">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:54:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P16382" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_229" name="IL4" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_229">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P07750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_231" name="IFNg-IFNgR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_231">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:21:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01580" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15261" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_233" name="IFNgR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_233">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15261" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_235" name="IL12-IL12R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_235">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43431" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P97378" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q60837" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_237" name="IL12R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_237">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P97378" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q60837" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_239" name="IL12" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_239">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43431" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_241" name="IL18-IL18R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_241">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70380" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61098" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_243" name="IL18R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_243">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61098" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_245" name="IL18" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_245">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70380" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_247" name="IL21" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_247">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9ES17" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_249" name="IL21-IL21R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_249">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9ES17" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9JHX3" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_251" name="IL21R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_251">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9JHX3" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_253" name="IL23R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_253">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8K4B4" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_255" name="IL23-IL23R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_255">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8K4B4" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9EQ14" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_257" name="IL10R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_257">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61190" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61727" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_259" name="IL10-IL10R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_259">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P18893" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61190" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q61727" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_261" name="IRAK1" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_261">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q62406" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_263" name="IRAK1-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_263">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q62406" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_265" name="p50/p65 dimer" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_265">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25799" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_267" name="STAT4" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_267">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42228" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_269" name="STAT4-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_269">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42228" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_271" name="IFNg" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_271">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:21:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01580" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_273" name="JAK1" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_273">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P52332" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_275" name="JAK1-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_275">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P52332" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_277" name="STAT1" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_277">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42225" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_279" name="STAT1-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_279">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:56:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42225" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_281" name="p40/p19 dimer" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_281">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9EQ14" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_283" name="IL17" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_283">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T12:52:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR010345" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_285" name="IL10" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_285">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P18893" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_287" name="RORgt" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_287">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:45:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P51450" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_289" name="RORgt-ligand" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_289">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:17:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000280" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P51450" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_291" name="STAT3-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_291">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_293" name="STAT3" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_293">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_295" name="STAT5-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_295">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42230" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_297" name="STAT5" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_297">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P42230" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_299" name="FOXP3" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_299">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:19:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q99JB6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_301" name="SOCS1" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_301">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O35716" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_303" name="SOCS1-JAKs" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_303">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O35716" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P52332" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_305" name="Tbet-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_305">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q5PSB0" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_307" name="Tbet" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_307">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q5PSB0" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_309" name="GATA3" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_309">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P23772" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_311" name="GATA3-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_311">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:20:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P23772" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_313" name="STAT6-P" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_313">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P52633" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_315" name="STAT6" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_315">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T13:19:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P52633" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_317" name="PPARg" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_317">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:23:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q6GU14" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_319" name="L-PPARg" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_319">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000280" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q6GU14" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_321" name="Ligand" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_321">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:23:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000280" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_323" name="acetylated FOXP3" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_323">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000215" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-08T13:15:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q99JB6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_325" name="p19" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_325">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9EQ14" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_327" name="p40" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_327">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43432" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_329" name="p50" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_329">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25799" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_331" name="p65" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_331">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q04207" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_333" name="IL17R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_333">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q60943" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_335" name="IL17-IL17R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_335">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T12:52:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR010345" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q60943" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_337" name="pIFNg" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_337">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T12:54:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01580" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_339" name="pIL21" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_339">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:09:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9ES17" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_341" name="pIL17" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_341">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T10:09:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR010345" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_343" name="TNFa" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_343">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:25:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_345" name="TNFaR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_345">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:05:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_347" name="TNFa-TNFaR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_347">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-09T18:45:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_349" name="pTNFa" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_349">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:32:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_351" name="IL22" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_351">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:41:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_353" name="IL22R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_353">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:42:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_355" name="IL22-IL22R" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_355">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:43:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_357" name="pIL22" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_357">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:55:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_359" name="AhR" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_359">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:02:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_361" name="AhRp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_361">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:02:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Hill Coeficient" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-25T11:26:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="BActin" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-13T11:42:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="FOXP3R" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-13T11:40:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[acetylated FOXP3],Reference=Concentration&gt;/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[BActin],Reference=InitialValue&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="IL17R" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-13T11:41:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17],Reference=Concentration&gt;/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[BActin],Reference=InitialValue&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="PS" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:14:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ATP],Reference=Concentration&gt;/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ADP],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="RS" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T17:15:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NAD],Reference=Concentration&gt;/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NADH],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="1/PS" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T11:32:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ADP],Reference=Concentration&gt;/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ATP],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="1/RS" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T14:29:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/&lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[RS],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="FAO" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:01:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Carnitine],Reference=Rate&gt;
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="IL18R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:07:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_243" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_241" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_313" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_243" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_241" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4381" name="Vf" value="0.1"/>
          <Constant key="Parameter_4380" name="K" value="0.138094"/>
          <Constant key="Parameter_4379" name="Vr" value="0.1"/>
          <Constant key="Parameter_4378" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="IL12 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T10:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_239" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_239" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4377" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_239"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="IL12R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:37:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_237" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_235" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_313" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_237" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_235" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4376" name="Vf" value="0.1"/>
          <Constant key="Parameter_4375" name="K1" value="2.94611"/>
          <Constant key="Parameter_4374" name="K2" value="0.743847"/>
          <Constant key="Parameter_4373" name="Vr" value="0.1"/>
          <Constant key="Parameter_4372" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_4373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_235"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="p50/p65 Dimerization" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T09:42:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_329" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_331" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_265" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_323" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_263" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_347" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4371" name="Vf" value="0.1"/>
          <Constant key="Parameter_4370" name="K1" value="0.1"/>
          <Constant key="Parameter_4369" name="K2" value="98.9482"/>
          <Constant key="Parameter_4368" name="K3" value="0.0539426"/>
          <Constant key="Parameter_4367" name="Vr" value="0.1"/>
          <Constant key="Parameter_4366" name="parameter_1" value="2"/>
          <Constant key="Parameter_4365" name="K4" value="4.74"/>
          <Constant key="Parameter_4364" name="K6" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Parameter_4371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="Parameter_4370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Parameter_4369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Metabolite_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Parameter_4368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Metabolite_263"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Parameter_4365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Metabolite_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Parameter_4364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Parameter_4367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="Metabolite_265"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="STAT4 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T10:58:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_267" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_269" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_249" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_311" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_235" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_255" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_267" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_269" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4363" name="Vf" value="0.1"/>
          <Constant key="Parameter_4362" name="K1" value="0.125481"/>
          <Constant key="Parameter_4361" name="K2" value="0.896854"/>
          <Constant key="Parameter_4360" name="K3" value="0.031433"/>
          <Constant key="Parameter_4359" name="K4" value="66.6168"/>
          <Constant key="Parameter_4358" name="Vr" value="0.1"/>
          <Constant key="Parameter_4357" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_4362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_4361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_4359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_4363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_4358"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_235"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_267"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="IFNgR Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_233" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_303" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_233" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4356" name="Vf" value="0.1"/>
          <Constant key="Parameter_4355" name="K" value="0.263953"/>
          <Constant key="Parameter_4354" name="Vr" value="0.1"/>
          <Constant key="Parameter_4353" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_4355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4356"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_4354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_303"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="IFNg Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:00:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_271" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_271" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4352" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4352"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_271"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="STAT1 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T10:41:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_277" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_279" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_355" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_249" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_231" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_275" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_277" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4351" name="Vf" value="0.1"/>
          <Constant key="Parameter_4350" name="K" value="0.1"/>
          <Constant key="Parameter_4349" name="K1" value="5.04432"/>
          <Constant key="Parameter_4348" name="K2" value="0.0705365"/>
          <Constant key="Parameter_4347" name="K3" value="14.9778"/>
          <Constant key="Parameter_4346" name="Vr" value="0.1"/>
          <Constant key="Parameter_4345" name="parameter_1" value="2"/>
          <Constant key="Parameter_4344" name="K4" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_4350"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_4349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_4348"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_4347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_4344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_4351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_4346"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_277"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_277"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="IFNg Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_337" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_271" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_269" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_265" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_305" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_337" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_271" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4343" name="Vf" value="0.1"/>
          <Constant key="Parameter_4342" name="K1" value="0.501917"/>
          <Constant key="Parameter_4341" name="K2" value="0.812366"/>
          <Constant key="Parameter_4340" name="K3" value="0.1"/>
          <Constant key="Parameter_4339" name="K4" value="1.477"/>
          <Constant key="Parameter_4338" name="K5" value="100"/>
          <Constant key="Parameter_4337" name="K6" value="0.0230841"/>
          <Constant key="Parameter_4336" name="Vr" value="0.1"/>
          <Constant key="Parameter_4335" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_4341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_4340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_4339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_4338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_4337"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_4343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_4336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_337"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Tbet Activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T11:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_307" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_305" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_269" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_279" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_311" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4334" name="Vf" value="0.1"/>
          <Constant key="Parameter_4333" name="K1" value="0.916783"/>
          <Constant key="Parameter_4332" name="K2" value="1.33537"/>
          <Constant key="Parameter_4331" name="K3" value="3.58849"/>
          <Constant key="Parameter_4330" name="K4" value="0.727962"/>
          <Constant key="Parameter_4329" name="K5" value="6.97805"/>
          <Constant key="Parameter_4328" name="Vr" value="0.1"/>
          <Constant key="Parameter_4327" name="parameter_1" value="2"/>
          <Constant key="Parameter_4326" name="K6" value="0.497"/>
          <Constant key="Parameter_4325" name="K7" value="0.34"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Parameter_4334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_307"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Parameter_4333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Parameter_4332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Metabolite_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Parameter_4331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Metabolite_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Parameter_4330"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Parameter_4329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Parameter_4326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Parameter_4325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Metabolite_311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Parameter_4328"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="JAK1 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:24:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_273" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_275" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_319" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_303" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_231" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_273" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_275" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4324" name="Vf" value="0.1"/>
          <Constant key="Parameter_4323" name="K1" value="0.1"/>
          <Constant key="Parameter_4322" name="K2" value="0.004433"/>
          <Constant key="Parameter_4321" name="K3" value="99.987"/>
          <Constant key="Parameter_4320" name="Vr" value="0.1"/>
          <Constant key="Parameter_4319" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Parameter_4323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_4322"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_4321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_4324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_4320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="SOCS1-JAKs Complexation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T14:49:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_301" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_303" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_279" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_305" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_301" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_303" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4318" name="Vf" value="0.1"/>
          <Constant key="Parameter_4317" name="K1" value="7.83763"/>
          <Constant key="Parameter_4316" name="K2" value="0.667462"/>
          <Constant key="Parameter_4315" name="Vr" value="0.1"/>
          <Constant key="Parameter_4314" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_4317"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_4316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_4318"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_4315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_301"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="IL4 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:03:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4313" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="IL4R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:21:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_227" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_303" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_227" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4312" name="Vf" value="0.1"/>
          <Constant key="Parameter_4311" name="K" value="13.0657"/>
          <Constant key="Parameter_4310" name="Vr" value="0.1"/>
          <Constant key="Parameter_4309" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_4311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_4312"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_4310"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_225"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="IL4 Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T14:52:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_279" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_311" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_229" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4308" name="Vf" value="0.8"/>
          <Constant key="Parameter_4307" name="K1" value="0.210399"/>
          <Constant key="Parameter_4306" name="K2" value="56.3452"/>
          <Constant key="Parameter_4305" name="K3" value="98.0373"/>
          <Constant key="Parameter_4304" name="K4" value="0.0855534"/>
          <Constant key="Parameter_4303" name="K5" value="0.32731"/>
          <Constant key="Parameter_4302" name="Vr" value="0.05"/>
          <Constant key="Parameter_4301" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4307"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_4306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_4305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_4304"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_4303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Parameter_4308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_4302"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="GATA3 Activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T14:55:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_309" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_311" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_305" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_313" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4300" name="Vf" value="0.7"/>
          <Constant key="Parameter_4299" name="K1" value="0.199351"/>
          <Constant key="Parameter_4298" name="K2" value="9.61521"/>
          <Constant key="Parameter_4297" name="K3" value="0.214012"/>
          <Constant key="Parameter_4296" name="K4" value="0.321065"/>
          <Constant key="Parameter_4295" name="K5" value="0.05"/>
          <Constant key="Parameter_4294" name="Vr" value="0.01"/>
          <Constant key="Parameter_4293" name="parameter_1" value="2"/>
          <Constant key="Parameter_4292" name="m1" value="1.#QNAN"/>
          <Constant key="Parameter_4291" name="m2" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Parameter_4300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Parameter_4291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="Parameter_4299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Parameter_4298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Parameter_4297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Parameter_4296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Parameter_4295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Parameter_4294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="Metabolite_311"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="STAT6 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:27:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_315" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_313" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_231" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_225" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_315" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_313" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4290" name="Vf" value="0.1"/>
          <Constant key="Parameter_4289" name="K" value="0.1"/>
          <Constant key="Parameter_4288" name="n1" value="0.004304"/>
          <Constant key="Parameter_4287" name="K1" value="0.1"/>
          <Constant key="Parameter_4286" name="Vr" value="0.1"/>
          <Constant key="Parameter_4285" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_4289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_4287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_4290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_4286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_4288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_315"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="IL2R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T15:42:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_219" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_219" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4284" name="k1" value="0.1"/>
          <Constant key="Parameter_4283" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_219"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="STAT5 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_297" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_295" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_219" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_297" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_295" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4282" name="Vf" value="0.1"/>
          <Constant key="Parameter_4281" name="K" value="0.374591"/>
          <Constant key="Parameter_4280" name="Vr" value="0.1"/>
          <Constant key="Parameter_4279" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Parameter_4281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_4282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_4280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_297"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="FOXP3 Activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T15:48:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_299" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_323" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_313" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_207" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_279" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_295" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4278" name="Vf" value="0.1"/>
          <Constant key="Parameter_4277" name="K1" value="100"/>
          <Constant key="Parameter_4276" name="K2" value="0.354892"/>
          <Constant key="Parameter_4275" name="K3" value="1.31281"/>
          <Constant key="Parameter_4274" name="K4" value="0.000679025"/>
          <Constant key="Parameter_4273" name="K5" value="2.07945"/>
          <Constant key="Parameter_4272" name="K6" value="100"/>
          <Constant key="Parameter_4271" name="K7" value="1.93254e-007"/>
          <Constant key="Parameter_4270" name="Vr" value="0.1"/>
          <Constant key="Parameter_4269" name="parameter_1" value="2"/>
          <Constant key="Parameter_4268" name="K8" value="27.8"/>
          <Constant key="Parameter_4267" name="K9" value="19.3"/>
          <Constant key="Parameter_4266" name="B" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Parameter_4278"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Metabolite_299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="Parameter_4277"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Metabolite_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Parameter_4276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Parameter_4275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Parameter_4274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Parameter_4273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Metabolite_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Parameter_4272"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_4271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Parameter_4268"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Parameter_4267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Parameter_4270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Metabolite_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Parameter_4266"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="TGFbR Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_215" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_215" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4265" name="k1" value="0.1"/>
          <Constant key="Parameter_4264" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="IL6R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:07:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_209" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_209" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4263" name="k1" value="0.1"/>
          <Constant key="Parameter_4262" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4263"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="STAT3 Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:08:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_293" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_291" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_355" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_249" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_255" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_259" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4261" name="Vf" value="0.1"/>
          <Constant key="Parameter_4260" name="K" value="0.1"/>
          <Constant key="Parameter_4259" name="K1" value="0.636796"/>
          <Constant key="Parameter_4258" name="K2" value="39.018"/>
          <Constant key="Parameter_4257" name="K3" value="2.26986"/>
          <Constant key="Parameter_4256" name="K4" value="0.137545"/>
          <Constant key="Parameter_4255" name="Vr" value="0.1"/>
          <Constant key="Parameter_4254" name="parameter_1" value="2"/>
          <Constant key="Parameter_4253" name="s83" value="0.1"/>
          <Constant key="Parameter_4252" name="K5" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="Parameter_4261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Parameter_4260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Parameter_4253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Metabolite_355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="Parameter_4259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Parameter_4258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="Metabolite_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="Parameter_4257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="Metabolite_259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Parameter_4256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Parameter_4252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Parameter_4255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="RORgT Activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:13:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_287" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_289" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_323" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4251" name="Vf" value="0.2249"/>
          <Constant key="Parameter_4250" name="K1" value="9722.09"/>
          <Constant key="Parameter_4249" name="K2" value="0.703778"/>
          <Constant key="Parameter_4248" name="K3" value="1.24123"/>
          <Constant key="Parameter_4247" name="K4" value="997.263"/>
          <Constant key="Parameter_4246" name="Vr" value="0.1"/>
          <Constant key="Parameter_4245" name="parameter_1" value="2"/>
          <Constant key="Parameter_4244" name="K5" value="0.493"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Parameter_4251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Metabolite_287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Parameter_4250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Metabolite_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Parameter_4249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Parameter_4248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Parameter_4247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Parameter_4244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Parameter_4246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_289"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="IL21R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:39:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_251" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_249" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_295" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_335" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_251" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_249" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4243" name="Vf" value="0.1"/>
          <Constant key="Parameter_4242" name="K" value="0.240705"/>
          <Constant key="Parameter_4241" name="K1" value="8.14189"/>
          <Constant key="Parameter_4240" name="Vr" value="0.1"/>
          <Constant key="Parameter_4239" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Parameter_4242"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_4241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_4243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_4240"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_335"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="IL21 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:00:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_247" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_247" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4238" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4238"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_247"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="p40/p19" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:03:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_281" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_281" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4237" name="k1" value="0.1"/>
          <Constant key="Parameter_4236" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4237"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4236"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_281"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="IL23R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:22:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_281" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_253" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_255" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_305" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_281" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_253" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_255" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4235" name="Vf" value="0.1"/>
          <Constant key="Parameter_4234" name="K" value="4.66107"/>
          <Constant key="Parameter_4233" name="Vr" value="0.1"/>
          <Constant key="Parameter_4232" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Parameter_4234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Parameter_4235"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_4233"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_255"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="p40/p19 Dimerization" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:04:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_327" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_325" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_281" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_319" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_207" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_327" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_325" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_281" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4231" name="Vf" value="0.1"/>
          <Constant key="Parameter_4230" name="K" value="0.1"/>
          <Constant key="Parameter_4229" name="K1" value="25.5354"/>
          <Constant key="Parameter_4228" name="Vr" value="0.1"/>
          <Constant key="Parameter_4227" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_4230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_4229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_4231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Parameter_4228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_327"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="IL21 Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:38:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_339" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_247" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_291" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_339" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_247" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4226" name="Vf" value="0.1"/>
          <Constant key="Parameter_4225" name="K" value="0.118892"/>
          <Constant key="Parameter_4224" name="Vr" value="0.1"/>
          <Constant key="Parameter_4223" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_4225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_4226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Parameter_4224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="IL10R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T16:57:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_257" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_259" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_257" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_259" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4222" name="k1" value="0.1"/>
          <Constant key="Parameter_4221" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_259"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="PPARg Activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T17:01:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_317" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_321" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_319" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_231" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_225" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4220" name="Vf" value="0.1"/>
          <Constant key="Parameter_4219" name="K" value="0.1"/>
          <Constant key="Parameter_4218" name="K1" value="0.1"/>
          <Constant key="Parameter_4217" name="Vr" value="0.1"/>
          <Constant key="Parameter_4216" name="parameter_1" value="2"/>
          <Constant key="Parameter_4215" name="K2" value="0.164"/>
          <Constant key="Parameter_4214" name="K3" value="0.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Parameter_4220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_317"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Metabolite_321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Parameter_4219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Parameter_4218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Parameter_4215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Parameter_4214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Parameter_4217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="TGFb Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:04:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4213" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_217"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="IL2 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:00:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4212" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="IL6 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-19T11:04:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4211" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="IL10 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-05-05T11:53:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_285" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_285" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4210" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_285"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="IL17 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-05-05T11:53:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_283" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_283" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4209" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_283"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="IL17R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-02-22T17:00:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_333" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_335" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_333" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_335" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4208" name="k1" value="0.184881"/>
          <Constant key="Parameter_4207" name="k2" value="0.1896"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_17"/>
              <SourceParameter reference="Metabolite_333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_335"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="IL18 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-05-04T12:34:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_245" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_245" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4206" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_245"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="IL17 Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-21T13:58:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_341" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_283" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_319" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_255" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_289" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_269" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_341" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_283" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4205" name="Vf" value="0.225095"/>
          <Constant key="Parameter_4204" name="K" value="0.1"/>
          <Constant key="Parameter_4203" name="K1" value="1.62893"/>
          <Constant key="Parameter_4202" name="K2" value="0.526832"/>
          <Constant key="Parameter_4201" name="K3" value="5.47889"/>
          <Constant key="Parameter_4200" name="Vr" value="0.1"/>
          <Constant key="Parameter_4199" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Parameter_4204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_4203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Parameter_4202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_4201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Parameter_4205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_4200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_341"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="IL18 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:13:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4198" name="V" value="0.1"/>
          <Constant key="Parameter_4197" name="k" value="0.5"/>
          <Constant key="Parameter_4196" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_4198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_4197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="IL12 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:15:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4195" name="V" value="0.1"/>
          <Constant key="Parameter_4194" name="k" value="0.5"/>
          <Constant key="Parameter_4193" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Parameter_4195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Parameter_4194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="IFNg pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:18:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4192" name="V" value="0.1"/>
          <Constant key="Parameter_4191" name="k" value="0.1"/>
          <Constant key="Parameter_4190" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_4192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Parameter_4191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="IL21 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:21:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4189" name="V" value="0.1"/>
          <Constant key="Parameter_4188" name="k" value="0.1"/>
          <Constant key="Parameter_4187" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Parameter_4189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Parameter_4188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="IL23 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:21:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4186" name="V" value="0.1"/>
          <Constant key="Parameter_4185" name="k" value="0.1"/>
          <Constant key="Parameter_4184" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Parameter_4186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Parameter_4185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="IL17 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:34:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_183" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_283" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4183" name="V" value="0.1"/>
          <Constant key="Parameter_4182" name="k" value="0.1"/>
          <Constant key="Parameter_4181" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Parameter_4183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_4182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="IL10 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4180" name="V" value="0.1"/>
          <Constant key="Parameter_4179" name="k" value="0.1"/>
          <Constant key="Parameter_4178" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Parameter_4180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_4179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="IL6 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:39:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4177" name="V" value="0.1"/>
          <Constant key="Parameter_4176" name="k" value="0.1"/>
          <Constant key="Parameter_4175" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Parameter_4177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Parameter_4176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="IL2 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:41:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4174" name="V" value="0.1"/>
          <Constant key="Parameter_4173" name="k" value="0.1"/>
          <Constant key="Parameter_4172" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Parameter_4174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Parameter_4173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="TGFb pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:42:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4171" name="V" value="0.1"/>
          <Constant key="Parameter_4170" name="k" value="0.1"/>
          <Constant key="Parameter_4169" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Parameter_4171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Parameter_4170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="IL4 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T10:43:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4168" name="V" value="0.1"/>
          <Constant key="Parameter_4167" name="k" value="0.1"/>
          <Constant key="Parameter_4166" name="parameter_1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Parameter_4168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Parameter_4167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="IL10 Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-18T11:35:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_285" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_249" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_361" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_295" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4165" name="Vf" value="0.1"/>
          <Constant key="Parameter_4164" name="K" value="0.508159"/>
          <Constant key="Parameter_4163" name="K1" value="0.1"/>
          <Constant key="Parameter_4162" name="K2" value="0.00125893"/>
          <Constant key="Parameter_4161" name="K3" value="0.645162"/>
          <Constant key="Parameter_4160" name="K4" value="100"/>
          <Constant key="Parameter_4159" name="Vr" value="0.1"/>
          <Constant key="Parameter_4158" name="parameter_1" value="2"/>
          <Constant key="Parameter_4157" name="s83" value="0.1"/>
          <Constant key="Parameter_4156" name="K5" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="Parameter_4165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Parameter_4164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Parameter_4157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="Parameter_4163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Parameter_4162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="Metabolite_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="Parameter_4161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="Metabolite_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Parameter_4160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Metabolite_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Parameter_4156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Parameter_4159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_285"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="LANCL2 Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T15:10:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4155" name="k1" value="0.1"/>
          <Constant key="Parameter_4154" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_55"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Glucose transport" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:18:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4153" name="Vm" value="114"/>
          <Constant key="Parameter_4152" name="Km" value="3.61"/>
          <Constant key="Parameter_4151" name="mp1" value="0.588235"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Parameter_4153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Parameter_4152"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Hexokinase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:18:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4150" name="Vm" value="0.54"/>
          <Constant key="Parameter_4149" name="Km" value="3.61"/>
          <Constant key="Parameter_4148" name="PS" value="1.7"/>
          <Constant key="Parameter_4147" name="PSi" value="1.5"/>
          <Constant key="Parameter_4146" name="k2" value="0.748"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Parameter_4150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Parameter_4149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Parameter_4147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Parameter_4146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="GAPDH Enolase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:20:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4145" name="Vmr" value="940"/>
          <Constant key="Parameter_4144" name="Kmr" value="0.0027"/>
          <Constant key="Parameter_4143" name="Cpi" value="0.1"/>
          <Constant key="Parameter_4142" name="Keq" value="4.167"/>
          <Constant key="Parameter_4141" name="Kmf" value="0.000175"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Parameter_4145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Parameter_4144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Parameter_4143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_4142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Parameter_4141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="PI PFK FBA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:23:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4140" name="Vmf" value="10"/>
          <Constant key="Parameter_4139" name="Kmf" value="0.06"/>
          <Constant key="Parameter_4138" name="PS" value="1.7"/>
          <Constant key="Parameter_4137" name="PSi" value="1.5"/>
          <Constant key="Parameter_4136" name="Vmr" value="1.6"/>
          <Constant key="Parameter_4135" name="Kmr" value="0.0031"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Parameter_4140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Parameter_4139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Parameter_4137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Parameter_4136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Parameter_4135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Pyruvate kinase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:25:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4134" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_69"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Lactate Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:26:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_265" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_323" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4133" name="Vmr" value="0.1"/>
          <Constant key="Parameter_4132" name="Kmr" value="0.1"/>
          <Constant key="Parameter_4131" name="Keq" value="0.1"/>
          <Constant key="Parameter_4130" name="Kmf" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Parameter_4133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Parameter_4132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Parameter_4131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Parameter_4130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Metabolite_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Lactate Export" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:29:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4129" name="Vm" value="3.24"/>
          <Constant key="Parameter_4128" name="Km" value="1.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Parameter_4129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Parameter_4128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Pyruvate dehydrogenase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:29:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4127" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_71"/>
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Citrate synthase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:30:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4126" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_79"/>
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="Aconitase Isocitrate dehydrogenase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4125" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_83"/>
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="AKG dehydrogenase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:33:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4124" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_87"/>
              <SourceParameter reference="Metabolite_111"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="SUC synthetase, SUCDH, Fumarase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4123" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_89"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Malate dehydrogenase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:34:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4122" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_91"/>
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="HIF1a activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:36:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_289" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4121" name="Vf" value="0.1"/>
          <Constant key="Parameter_4120" name="K1" value="1.032"/>
          <Constant key="Parameter_4119" name="K2" value="0.628"/>
          <Constant key="Parameter_4118" name="Vr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Parameter_4121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Parameter_4120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Parameter_4119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Parameter_4118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="PD1 Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:38:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4117" name="k1" value="0.1"/>
          <Constant key="Parameter_4116" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_95"/>
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="AMPK activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:38:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4115" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="NLRX1 activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4114" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="ATP Usage" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:50:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4113" name="Vm" value="5"/>
          <Constant key="Parameter_4112" name="PS" value="1.7"/>
          <Constant key="Parameter_4111" name="Km" value="2.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Parameter_4113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Parameter_4111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="FA Preparation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:41:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4110" name="k1" value="0.1"/>
          <Constant key="Parameter_4109" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_4110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_4109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="Cpt1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:42:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_319" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4108" name="sf" value="1"/>
          <Constant key="Parameter_4107" name="Vf" value="0.1"/>
          <Constant key="Parameter_4106" name="Km1" value="13.8"/>
          <Constant key="Parameter_4105" name="Km2" value="250"/>
          <Constant key="Parameter_4104" name="Km3" value="136"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Parameter_4108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_4107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Parameter_4106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_4105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_4104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Metabolite_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="Cpt2" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4103" name="sf" value="0.85"/>
          <Constant key="Parameter_4102" name="V" value="0.391"/>
          <Constant key="Parameter_4101" name="Km1" value="51"/>
          <Constant key="Parameter_4100" name="Km2" value="38"/>
          <Constant key="Parameter_4099" name="Km3" value="350"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Parameter_4103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Parameter_4102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Parameter_4101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Parameter_4100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Parameter_4099"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="16acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4098" name="sf" value="0.9"/>
          <Constant key="Parameter_4097" name="V" value="0.01"/>
          <Constant key="Parameter_4096" name="Km1" value="2.5"/>
          <Constant key="Parameter_4095" name="Km2" value="1.08"/>
          <Constant key="Parameter_4094" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4095"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4094"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="12acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:45:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4093" name="sf" value="0.9"/>
          <Constant key="Parameter_4092" name="V" value="0.01"/>
          <Constant key="Parameter_4091" name="Km1" value="9"/>
          <Constant key="Parameter_4090" name="Km2" value="1.08"/>
          <Constant key="Parameter_4089" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4092"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4090"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4089"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="14acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:46:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4088" name="sf" value="1"/>
          <Constant key="Parameter_4087" name="V" value="0.01"/>
          <Constant key="Parameter_4086" name="Km1" value="7.4"/>
          <Constant key="Parameter_4085" name="Km2" value="1.08"/>
          <Constant key="Parameter_4084" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4088"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4087"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4086"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4085"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4084"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="10acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:47:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4083" name="sf" value="0.75"/>
          <Constant key="Parameter_4082" name="V" value="0.01"/>
          <Constant key="Parameter_4081" name="Km1" value="24.3"/>
          <Constant key="Parameter_4080" name="Km2" value="1.08"/>
          <Constant key="Parameter_4079" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4083"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4081"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4080"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4079"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="8acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:47:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4078" name="sf" value="0.87"/>
          <Constant key="Parameter_4077" name="V" value="0.081"/>
          <Constant key="Parameter_4076" name="Km1" value="4"/>
          <Constant key="Parameter_4075" name="Km2" value="1.08"/>
          <Constant key="Parameter_4074" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4078"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4077"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4076"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4074"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="6acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4073" name="sf" value="1"/>
          <Constant key="Parameter_4072" name="V" value="0.081"/>
          <Constant key="Parameter_4071" name="Km1" value="9.4"/>
          <Constant key="Parameter_4070" name="Km2" value="1.08"/>
          <Constant key="Parameter_4069" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4072"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4070"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4069"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="4acylCoA Dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:48:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4068" name="sf" value="0.12"/>
          <Constant key="Parameter_4067" name="V" value="0.081"/>
          <Constant key="Parameter_4066" name="Km1" value="135"/>
          <Constant key="Parameter_4065" name="Km2" value="1.08"/>
          <Constant key="Parameter_4064" name="Keq" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_4067"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4066"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4065"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4064"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="16MTP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4063" name="sf" value="1"/>
          <Constant key="Parameter_4062" name="V" value="2.84"/>
          <Constant key="Parameter_4061" name="Km1" value="25"/>
          <Constant key="Parameter_4060" name="Km2" value="60"/>
          <Constant key="Parameter_4059" name="Km3" value="13.83"/>
          <Constant key="Parameter_4058" name="Km4" value="50"/>
          <Constant key="Parameter_4057" name="Km5" value="30"/>
          <Constant key="Parameter_4056" name="Keq" value="0.71"/>
          <Constant key="Parameter_4055" name="Km6" value="13.83"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_4063"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_4062"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_4061"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_4060"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_4059"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Parameter_4058"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_4057"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4056"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_4055"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="14MTP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:52:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4054" name="sf" value="0.9"/>
          <Constant key="Parameter_4053" name="V" value="2.84"/>
          <Constant key="Parameter_4052" name="Km1" value="25"/>
          <Constant key="Parameter_4051" name="Km2" value="60"/>
          <Constant key="Parameter_4050" name="Km3" value="13.83"/>
          <Constant key="Parameter_4049" name="Km4" value="50"/>
          <Constant key="Parameter_4048" name="Km5" value="30"/>
          <Constant key="Parameter_4047" name="Keq" value="0.71"/>
          <Constant key="Parameter_4046" name="Km6" value="13.83"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_4054"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_4053"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_4052"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_4051"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_4050"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Parameter_4049"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_4048"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4047"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_4046"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="12MTP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:52:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4045" name="sf" value="0.81"/>
          <Constant key="Parameter_4044" name="V" value="2.84"/>
          <Constant key="Parameter_4043" name="Km1" value="25"/>
          <Constant key="Parameter_4042" name="Km2" value="60"/>
          <Constant key="Parameter_4041" name="Km3" value="13.83"/>
          <Constant key="Parameter_4040" name="Km4" value="50"/>
          <Constant key="Parameter_4039" name="Km5" value="30"/>
          <Constant key="Parameter_4038" name="Keq" value="0.71"/>
          <Constant key="Parameter_4037" name="Km6" value="13.83"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_4045"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_4044"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_4043"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_4042"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_4041"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Parameter_4040"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_4039"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_4037"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="10MTP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:53:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4036" name="sf" value="0.73"/>
          <Constant key="Parameter_4035" name="V" value="2.84"/>
          <Constant key="Parameter_4034" name="Km1" value="25"/>
          <Constant key="Parameter_4033" name="Km2" value="60"/>
          <Constant key="Parameter_4032" name="Km3" value="13.83"/>
          <Constant key="Parameter_4031" name="Km4" value="50"/>
          <Constant key="Parameter_4030" name="Km5" value="30"/>
          <Constant key="Parameter_4029" name="Keq" value="0.71"/>
          <Constant key="Parameter_4028" name="Km6" value="13.83"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_4036"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_4035"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_4034"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_4033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_4032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Parameter_4031"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_4030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4029"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_4028"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="16Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:53:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4027" name="sf" value="0.6"/>
          <Constant key="Parameter_4026" name="V" value="1"/>
          <Constant key="Parameter_4025" name="Km1" value="1.5"/>
          <Constant key="Parameter_4024" name="Km2" value="58.5"/>
          <Constant key="Parameter_4023" name="Km3" value="1.4"/>
          <Constant key="Parameter_4022" name="Km4" value="5.4"/>
          <Constant key="Parameter_4021" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4027"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_4026"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_4025"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_4024"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_4023"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_4022"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_4021"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="14Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:56:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4020" name="sf" value="0.5"/>
          <Constant key="Parameter_4019" name="V" value="1"/>
          <Constant key="Parameter_4018" name="Km1" value="1.8"/>
          <Constant key="Parameter_4017" name="Km2" value="58.5"/>
          <Constant key="Parameter_4016" name="Km3" value="1.4"/>
          <Constant key="Parameter_4015" name="Km4" value="5.4"/>
          <Constant key="Parameter_4014" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4020"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_4019"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_4018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_4017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_4016"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_4015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_4014"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="12Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:56:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4013" name="sf" value="0.43"/>
          <Constant key="Parameter_4012" name="V" value="1"/>
          <Constant key="Parameter_4011" name="Km1" value="3.7"/>
          <Constant key="Parameter_4010" name="Km2" value="58.5"/>
          <Constant key="Parameter_4009" name="Km3" value="1.6"/>
          <Constant key="Parameter_4008" name="Km4" value="5.4"/>
          <Constant key="Parameter_4007" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4013"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_4012"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_4011"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_4010"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_4009"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_4008"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_4007"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="10Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:57:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4006" name="sf" value="0.6"/>
          <Constant key="Parameter_4005" name="V" value="1"/>
          <Constant key="Parameter_4004" name="Km1" value="8.8"/>
          <Constant key="Parameter_4003" name="Km2" value="58.5"/>
          <Constant key="Parameter_4002" name="Km3" value="2.3"/>
          <Constant key="Parameter_4001" name="Km4" value="5.4"/>
          <Constant key="Parameter_4000" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_4005"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_4004"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_4003"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_4002"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_4001"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_4000"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="8Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:57:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3999" name="sf" value="0.89"/>
          <Constant key="Parameter_3998" name="V" value="1"/>
          <Constant key="Parameter_3997" name="Km1" value="16.3"/>
          <Constant key="Parameter_3996" name="Km2" value="58.5"/>
          <Constant key="Parameter_3995" name="Km3" value="4.1"/>
          <Constant key="Parameter_3994" name="Km4" value="5.4"/>
          <Constant key="Parameter_3993" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_3999"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_3998"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_3997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_3996"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_3995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_3994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_3993"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="6Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:57:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3992" name="sf" value="1"/>
          <Constant key="Parameter_3991" name="V" value="1"/>
          <Constant key="Parameter_3990" name="Km1" value="28.6"/>
          <Constant key="Parameter_3989" name="Km2" value="58.5"/>
          <Constant key="Parameter_3988" name="Km3" value="5.8"/>
          <Constant key="Parameter_3987" name="Km4" value="5.4"/>
          <Constant key="Parameter_3986" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_3992"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_3991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_3990"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_3989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_3988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_3987"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_3986"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="4Crotonase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:57:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3985" name="sf" value="0.67"/>
          <Constant key="Parameter_3984" name="V" value="1"/>
          <Constant key="Parameter_3983" name="Km1" value="69.9"/>
          <Constant key="Parameter_3982" name="Km2" value="58.5"/>
          <Constant key="Parameter_3981" name="Km3" value="16.9"/>
          <Constant key="Parameter_3980" name="Km4" value="5.4"/>
          <Constant key="Parameter_3979" name="Keq" value="0.000217"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_3985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_3984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_3983"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_3982"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_3981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_3980"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_3979"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="16MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T10:58:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3978" name="sf" value="0.1"/>
          <Constant key="Parameter_3977" name="V" value="0.377"/>
          <Constant key="Parameter_3976" name="Km1" value="1.1"/>
          <Constant key="Parameter_3975" name="Km2" value="13.83"/>
          <Constant key="Parameter_3974" name="Km3" value="30"/>
          <Constant key="Parameter_3973" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3978"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3977"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3976"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3975"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3974"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3973"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="14MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:00:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3972" name="sf" value="0.2"/>
          <Constant key="Parameter_3971" name="V" value="0.377"/>
          <Constant key="Parameter_3970" name="Km1" value="1.2"/>
          <Constant key="Parameter_3969" name="Km2" value="13.83"/>
          <Constant key="Parameter_3968" name="Km3" value="30"/>
          <Constant key="Parameter_3967" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3972"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3971"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3970"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3969"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3968"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3967"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="12MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:00:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3966" name="sf" value="0.38"/>
          <Constant key="Parameter_3965" name="V" value="0.377"/>
          <Constant key="Parameter_3964" name="Km1" value="1.3"/>
          <Constant key="Parameter_3963" name="Km2" value="13.83"/>
          <Constant key="Parameter_3962" name="Km3" value="30"/>
          <Constant key="Parameter_3961" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3966"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3965"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3964"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3961"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="10MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:00:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3960" name="sf" value="0.65"/>
          <Constant key="Parameter_3959" name="V" value="0.377"/>
          <Constant key="Parameter_3958" name="Km1" value="2.1"/>
          <Constant key="Parameter_3957" name="Km2" value="13.83"/>
          <Constant key="Parameter_3956" name="Km3" value="30"/>
          <Constant key="Parameter_3955" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3958"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3955"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="8MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3954" name="sf" value="0.81"/>
          <Constant key="Parameter_3953" name="V" value="0.377"/>
          <Constant key="Parameter_3952" name="Km1" value="3.2"/>
          <Constant key="Parameter_3951" name="Km2" value="13.83"/>
          <Constant key="Parameter_3950" name="Km3" value="30"/>
          <Constant key="Parameter_3949" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3954"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3953"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3952"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3949"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="6MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:01:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3948" name="sf" value="1"/>
          <Constant key="Parameter_3947" name="V" value="0.377"/>
          <Constant key="Parameter_3946" name="Km1" value="6.7"/>
          <Constant key="Parameter_3945" name="Km2" value="13.83"/>
          <Constant key="Parameter_3944" name="Km3" value="30"/>
          <Constant key="Parameter_3943" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3948"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3947"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3946"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3945"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3944"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3943"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="4MCKAT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:02:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_181" stoichiometry="1"/>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3942" name="sf" value="0.49"/>
          <Constant key="Parameter_3941" name="V" value="0.377"/>
          <Constant key="Parameter_3940" name="Km1" value="12.4"/>
          <Constant key="Parameter_3939" name="Km2" value="13.83"/>
          <Constant key="Parameter_3938" name="Km3" value="30"/>
          <Constant key="Parameter_3937" name="Keq" value="1051"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Parameter_3942"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_3941"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_3940"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Parameter_3939"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Parameter_3938"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_3937"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="FA Uptake" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:07:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3936" name="k1" value="0.1345"/>
          <Constant key="Parameter_3935" name="mp1" value="0.588235"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_3936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="Glycerol Uptake" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:07:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3934" name="k1" value="0.0112"/>
          <Constant key="Parameter_3933" name="mp1" value="0.588235"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_3934"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="TGL Hydrolysis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:07:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="3"/>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3932" name="k1" value="0.0082"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Parameter_3932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="TGL Synthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:08:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="3"/>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_177" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3931" name="k1" value="0.0264"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Parameter_3931"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="Glycerol Phosphate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T11:08:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_179" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3930" name="k1" value="0.01152"/>
          <Constant key="Parameter_3929" name="k2" value="0.001"/>
          <Constant key="Parameter_3928" name="k3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_3930"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Parameter_3929"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Parameter_3928"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="GR3P_GAP" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-15T15:34:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_179" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3927" name="V" value="0.001"/>
          <Constant key="Parameter_3926" name="RS" value="0.000826446"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Parameter_3927"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="ATP Conversion" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-19T09:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="3"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
          <Product metabolite="Metabolite_109" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3925" name="k" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Parameter_3925"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="PPARg expression" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-19T11:49:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_317" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3924" name="Vf" value="0.025"/>
          <Constant key="Parameter_3923" name="K1" value="0.1"/>
          <Constant key="Parameter_3922" name="Vr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Parameter_3924"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Parameter_3923"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Parameter_3922"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Metabolite_317"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="reaction_1" reversible="false" fast="false">
      </Reaction>
      <Reaction key="Reaction_108" name="IL22 Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-16T17:23:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_357" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_351" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_361" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_291" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3921" name="Vf" value="0.1"/>
          <Constant key="Parameter_3920" name="K" value="0.1"/>
          <Constant key="Parameter_3919" name="parameter_1" value="0.1"/>
          <Constant key="Parameter_3918" name="s83" value="0.1"/>
          <Constant key="Parameter_3917" name="K1" value="0.1"/>
          <Constant key="Parameter_3916" name="K2" value="0.1"/>
          <Constant key="Parameter_3915" name="Vr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Parameter_3921"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Metabolite_357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Parameter_3920"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Parameter_3919"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Parameter_3918"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Metabolite_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Parameter_3917"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Metabolite_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Parameter_3916"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Parameter_3915"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="Metabolite_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="reaction_2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-16T17:35:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Reaction>
      <Reaction key="Reaction_110" name="IL-22 Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-17T15:19:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_351" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_351" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3914" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_3914"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="IL-22R Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-17T15:22:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_195" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_353" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_355" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_195" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_353" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_355" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3913" name="k1" value="0.1"/>
          <Constant key="Parameter_3912" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_3913"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_195"/>
              <SourceParameter reference="Metabolite_353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_3912"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="TNFaR Binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_345" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_347" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3911" name="v" value="-0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_7">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Parameter_3911"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="IL22 pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T11:39:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_197" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_195" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_199" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_351" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3910" name="k1" value="0.1"/>
          <Constant key="Parameter_3909" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_3910"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_3909"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="AhR Phosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:03:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_359" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_361" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_347" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_219" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3908" name="K1" value="0.1"/>
          <Constant key="Parameter_3907" name="K2" value="0.1"/>
          <Constant key="Parameter_3906" name="Vf" value="0.1"/>
          <Constant key="Parameter_3905" name="Vr" value="0.1"/>
          <Constant key="Parameter_3904" name="parameter_1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_3908"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_3907"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_3906"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_3905"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_3904"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_359"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="TNFa Export" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:19:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_343" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_343" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3903" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_3903"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_343"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="reaction_3" reversible="false" fast="false">
      </Reaction>
      <Reaction key="Reaction_117" name="TNFa pool" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:24:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_187" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_185" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_189" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_343" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3902" name="k1" value="0.1"/>
          <Constant key="Parameter_3901" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_3902"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_187"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_3901"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_185"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="reaction_4" reversible="false" fast="false">
      </Reaction>
      <Reaction key="Reaction_119" name="TNFa Production" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-02-19T12:26:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_349" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_343" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_305" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3900" name="K" value="0.1"/>
          <Constant key="Parameter_3899" name="Vf" value="0.1"/>
          <Constant key="Parameter_3898" name="Vr" value="0.1"/>
          <Constant key="Parameter_3897" name="parameter_1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Parameter_3900"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_3899"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_3898"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_3897"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIFNg]" value="2.2884138802e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IFNg_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL12]" value="1.6861997012e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL12_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL21]" value="1.4453140296e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL21_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL23]" value="1.3248711938e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL23_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL4]" value="8.671884177599992e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL4_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eTGFb]" value="2.6497423876e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TGFb_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL2]" value="4.817713432e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL2_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL6]" value="9.033212684999999e+022" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL6_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL17]" value="6.02214179e+021" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL17_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL10]" value="1.5657568654e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL10_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL18]" value="5.8414775363e+023" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL18_pool],Reference=InitialConcentration&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[anti-IL4]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[anti-IFNg]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[pIL4]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL18_pool]" value="5.8414775363e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL12_pool]" value="1.6861997012e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IFNg_pool]" value="2.2884138802e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL21_pool]" value="1.4453140296e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL23_pool]" value="1.3248711938e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL17_pool]" value="6.02214179e+021" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL10_pool]" value="1.5657568654e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL6_pool]" value="9.033212684999999e+022" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL2_pool]" value="4.817713432e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TGFb_pool]" value="2.6497423876e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL4_pool]" value="8.671884177599992e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[pIL10]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ABA]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[LANCL2]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[LANCL2-ABA]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Glucose]" value="2.17399318619e+024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eGlucose]" value="2.1077496265e+024" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[G6P]" value="3.613285074e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[AMPK]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[GAP]" value="1.8668639549e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[PEP]" value="2.7701852234e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Pyruvate]" value="3.5530636561e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Lactate]" value="5.9016989542e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NLRX1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eLactate]" value="7.226570147999999e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Acetyl-CoA]" value="6.02214179e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[HIF1a]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[CIT]" value="6.02214179e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[OAA]" value="1.806642537e+020" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[AKG]" value="6.02214179e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[SUC]" value="6.02214179e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[MAL]" value="6.02214179e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[iHIF1a]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[PD1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[PD1-PDL1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[PDL1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[iAMPK]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[FA]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[iNLRX1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ADP]" value="1.204428358e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ATP]" value="2.0475282086e+025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NAD]" value="7.2867915659e+024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NADH]" value="6.02214179e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16AcylCarn]" value="1.02978624609e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Carnitine]" value="1.806642537e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m16AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m14AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m12AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m10AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m8AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[6EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m6AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[4EnoylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m4AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8AcylCoA]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[6KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[4KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eFA]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Glycerol]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eGlycerol]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TGL]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[GR3P]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[2KetoAcyl]" value="6.02214179e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL17_pool]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eTNFa]" value="6.02214179e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TNFa_pool]" value="6.02214179e+021" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eTNFa_pool]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[species_1]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[species_2]" value="1.204428358e+024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL22]" value="6.02214179e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL22_pool]" value="6.02214179e+021" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL22_pool]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[species_3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL-22]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[IL-22R]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6-IL6R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6R]" value="6.022141499732765e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFb-TGFbR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFbR]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFb]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2-IL2R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4-IL4R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNg-IFNgR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNgR]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12-IL12R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18-IL18R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21-IL21R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL23R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL23-IL23R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10R]" value="6.022141499999998e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10-IL10R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IRAK1]" value="3.011070895e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IRAK1-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p50/p65 dimer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT4]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT4-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNg]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[JAK1]" value="3.011070895e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[JAK1-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT1]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT1-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p40/p19 dimer]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[RORgt]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[RORgt-ligand]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT3-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT3]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT5-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT5]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[FOXP3]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[SOCS1]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[SOCS1-JAKs]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[Tbet-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[Tbet]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[GATA3]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[GATA3-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT6-P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT6]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[PPARg]" value="4.817713432e+022" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[L-PPARg]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[Ligand]" value="6.022141499732765e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[acetylated FOXP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p19]" value="6.022141499732765e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p40]" value="6.022141499732765e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p50]" value="3.011070895e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p65]" value="3.011070895e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17R]" value="6.022141499732765e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17-IL17R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[pIFNg]" value="6.022141499732765e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[pIL21]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[pIL17]" value="6.022141499999998e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TNFa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TNFaR]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TNFa-TNFaR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[pTNFa]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL22]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL22R]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL22-IL22R]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[pIL22]" value="6.02214179e+023" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[AhR]" value="6.02214179e+023" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[AhRp]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[BActin]" value="0.00850607781012331" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[FOXP3R]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[IL17R]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[PS]" value="1.7" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[RS]" value="1210" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/PS]" value="0.5882352941176471" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/RS]" value="0.0008264462809917355" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[FAO]" value="NaN" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18R Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18R Binding],ParameterGroup=Parameters,Parameter=K" value="0.138094" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18R Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18R Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding],ParameterGroup=Parameters,Parameter=K1" value="2.94611" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding],ParameterGroup=Parameters,Parameter=K2" value="0.743847" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12R Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=K2" value="98.9482" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=K3" value="0.0539426" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=K4" value="4.74" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p50/p65 Dimerization],ParameterGroup=Parameters,Parameter=K6" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.125481" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.896854" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=K3" value="0.031433" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=K4" value="66.6168" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT4 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNgR Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNgR Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNgR Binding],ParameterGroup=Parameters,Parameter=K" value="0.263953" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNgR Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNgR Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="5.04432" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.0705365" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=K3" value="14.9778" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT1 Phosphorylation],ParameterGroup=Parameters,Parameter=K4" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K1" value="0.501917" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K2" value="0.812366" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K3" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K4" value="1.477" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K5" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=K6" value="0.0230841" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg Production],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K1" value="0.916783" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K2" value="1.33537" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K3" value="3.58849" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K4" value="0.727962" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K5" value="6.97805" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K6" value="0.497" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Tbet Activation],ParameterGroup=Parameters,Parameter=K7" value="0.34" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.004433" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=K3" value="99.987" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[JAK1 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation],ParameterGroup=Parameters,Parameter=K1" value="7.83763" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation],ParameterGroup=Parameters,Parameter=K2" value="0.667462" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SOCS1-JAKs Complexation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4R Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4R Binding],ParameterGroup=Parameters,Parameter=K" value="13.0657" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4R Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4R Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=Vf" value="0.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=K1" value="0.210399" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=K2" value="56.3452" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=K3" value="98.0373" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=K4" value="0.0855534" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=K5" value="0.32731" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=Vr" value="0.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 Production],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=Vf" value="0.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=K1" value="0.199351" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=K2" value="9.615209999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=K3" value="0.214012" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=K4" value="0.321065" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=K5" value="0.05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=Vr" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=m1" value="NaN" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[FAO],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GATA3 Activation],ParameterGroup=Parameters,Parameter=m2" value="1000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=n1" value="0.004304000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT6 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2R Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2R Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT5 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT5 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT5 Phosphorylation],ParameterGroup=Parameters,Parameter=K" value="0.374591" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT5 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT5 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K1" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K2" value="0.354892" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K3" value="1.31281" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K4" value="0.000679025" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K5" value="2.07945" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K6" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K7" value="1.93254e-007" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K8" value="27.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=K9" value="19.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FOXP3 Activation],ParameterGroup=Parameters,Parameter=B" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFbR Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFbR Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFbR Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6R Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6R Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.636796" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K2" value="39.018" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K3" value="2.26986" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K4" value="0.137545" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=s83" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[STAT3 Phosphorylation],ParameterGroup=Parameters,Parameter=K5" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=Vf" value="0.2249" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K1" value="9722.09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K2" value="0.703778" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K3" value="1.24123" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K4" value="997.263" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K5" value="0.493" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding],ParameterGroup=Parameters,Parameter=K" value="0.240705" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding],ParameterGroup=Parameters,Parameter=K1" value="8.14189" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21R Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23R Binding],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23R Binding],ParameterGroup=Parameters,Parameter=K" value="4.66107" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23R Binding],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23R Binding],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization],ParameterGroup=Parameters,Parameter=K1" value="25.5354" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[p40/p19 Dimerization],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Production],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Production],ParameterGroup=Parameters,Parameter=K" value="0.118892" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 Production],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10R Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10R Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=K2" value="0.164" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg Activation],ParameterGroup=Parameters,Parameter=K3" value="0.23" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17R Binding],ParameterGroup=Parameters,Parameter=k1" value="0.184881" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17R Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1896" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=Vf" value="0.225095" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=K1" value="1.62893" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=K2" value="0.526832" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=K3" value="5.47889" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 Production],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 pool],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL18 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 pool],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL12 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IFNg pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL21 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL23 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL17 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL6 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL2 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGFb pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 pool],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 pool],ParameterGroup=Parameters,Parameter=k" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL4 pool],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K" value="0.508159" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K2" value="0.00125893" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K3" value="0.645162" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K4" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=parameter_1" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[Hill Coeficient],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=s83" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=K5" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[LANCL2 Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[LANCL2 Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[LANCL2 Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glucose transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glucose transport],ParameterGroup=Parameters,Parameter=Vm" value="114" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glucose transport],ParameterGroup=Parameters,Parameter=Km" value="3.61" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glucose transport],ParameterGroup=Parameters,Parameter=mp1" value="0.5882352941176471" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Vm" value="0.54" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Km" value="3.61" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=PS" value="1.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=PSi" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=k2" value="0.748" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],ParameterGroup=Parameters,Parameter=Vmr" value="940" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],ParameterGroup=Parameters,Parameter=Kmr" value="0.0027" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],ParameterGroup=Parameters,Parameter=Cpi" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],ParameterGroup=Parameters,Parameter=Keq" value="4.167" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],ParameterGroup=Parameters,Parameter=Kmf" value="0.000175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=Vmf" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=Kmf" value="0.06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=PS" value="1.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=PSi" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=Vmr" value="1.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],ParameterGroup=Parameters,Parameter=Kmr" value="0.0031" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Pyruvate kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Pyruvate kinase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Vmr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Kmr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Kmf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Export],ParameterGroup=Parameters,Parameter=Vm" value="3.24" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Lactate Export],ParameterGroup=Parameters,Parameter=Km" value="1.2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Pyruvate dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Pyruvate dehydrogenase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Citrate synthase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Citrate synthase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Aconitase Isocitrate dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Aconitase Isocitrate dehydrogenase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AKG dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AKG dehydrogenase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SUC synthetase\, SUCDH\, Fumarase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SUC synthetase\, SUCDH\, Fumarase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Malate dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Malate dehydrogenase],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[HIF1a activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[HIF1a activation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[HIF1a activation],ParameterGroup=Parameters,Parameter=K1" value="1.032" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[HIF1a activation],ParameterGroup=Parameters,Parameter=K2" value="0.628" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[HIF1a activation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PD1 Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PD1 Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PD1 Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AMPK activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AMPK activation],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[NLRX1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[NLRX1 activation],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Usage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Usage],ParameterGroup=Parameters,Parameter=Vm" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Usage],ParameterGroup=Parameters,Parameter=PS" value="1.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Usage],ParameterGroup=Parameters,Parameter=Km" value="2.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Preparation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Preparation],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Preparation],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=Km1" value="13.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=Km2" value="250" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=Km3" value="136" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2],ParameterGroup=Parameters,Parameter=sf" value="0.85" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2],ParameterGroup=Parameters,Parameter=V" value="0.391" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2],ParameterGroup=Parameters,Parameter=Km1" value="51" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2],ParameterGroup=Parameters,Parameter=Km2" value="38" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt2],ParameterGroup=Parameters,Parameter=Km3" value="350" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="0.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="2.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="0.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="7.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="0.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="24.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="0.87" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.081" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.081" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="9.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=sf" value="0.12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=V" value="0.081" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km1" value="135" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Km2" value="1.08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4acylCoA Dehydrogenase],ParameterGroup=Parameters,Parameter=Keq" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=V" value="2.84" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km1" value="25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km2" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km3" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km4" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km5" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Keq" value="0.71" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MTP],ParameterGroup=Parameters,Parameter=Km6" value="13.83" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=sf" value="0.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=V" value="2.84" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km1" value="25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km2" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km3" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km4" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km5" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Keq" value="0.71" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MTP],ParameterGroup=Parameters,Parameter=Km6" value="13.83" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=sf" value="0.8100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=V" value="2.84" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km1" value="25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km2" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km3" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km4" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km5" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Keq" value="0.71" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MTP],ParameterGroup=Parameters,Parameter=Km6" value="13.83" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=sf" value="0.73" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=V" value="2.84" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km1" value="25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km2" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km3" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km4" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km5" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Keq" value="0.71" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MTP],ParameterGroup=Parameters,Parameter=Km6" value="13.83" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="1.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="1.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="1.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.43" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="3.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="1.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="8.800000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="2.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.89" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="16.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="4.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="28.6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="5.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=sf" value="0.67" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=Km1" value="69.90000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=Km2" value="58.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=Km3" value="16.9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=Km4" value="5.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4Crotonase],ParameterGroup=Parameters,Parameter=Keq" value="0.000217" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="1.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[16MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[14MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.38" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="1.3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[12MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.65" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="2.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[10MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.8100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="3.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[8MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=sf" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="6.7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[6MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=sf" value="0.49" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=V" value="0.377" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=Km1" value="12.4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=Km2" value="13.83" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=Km3" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[4MCKAT],ParameterGroup=Parameters,Parameter=Keq" value="1051" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Uptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Uptake],ParameterGroup=Parameters,Parameter=k1" value="0.1345" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[FA Uptake],ParameterGroup=Parameters,Parameter=mp1" value="0.5882352941176471" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Uptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Uptake],ParameterGroup=Parameters,Parameter=k1" value="0.0112" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Uptake],ParameterGroup=Parameters,Parameter=mp1" value="0.5882352941176471" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/PS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGL Hydrolysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGL Hydrolysis],ParameterGroup=Parameters,Parameter=k1" value="0.008200000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGL Synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGL Synthesis],ParameterGroup=Parameters,Parameter=k1" value="0.0264" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Phosphate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Phosphate],ParameterGroup=Parameters,Parameter=k1" value="0.01152" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Phosphate],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Phosphate],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GR3P_GAP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GR3P_GAP],ParameterGroup=Parameters,Parameter=V" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GR3P_GAP],ParameterGroup=Parameters,Parameter=RS" value="0.0008264462809917355" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[1/RS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Conversion]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Conversion],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg expression]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg expression],ParameterGroup=Parameters,Parameter=Vf" value="0.025" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg expression],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PPARg expression],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[reaction_1]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=parameter_1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=s83" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=K2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[reaction_2]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL-22 Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL-22 Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL-22R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL-22R Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL-22R Binding],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFaR Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFaR Binding],ParameterGroup=Parameters,Parameter=v" value="-0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 pool],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[IL22 pool],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AhR Phosphorylation],ParameterGroup=Parameters,Parameter=parameter_1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Export],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[reaction_3]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa pool]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa pool],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa pool],ParameterGroup=Parameters,Parameter=k2" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[reaction_4]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Production],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Production],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Production],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TNFa Production],ParameterGroup=Parameters,Parameter=parameter_1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_3"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_185"/>
      <StateTemplateVariable objectReference="Metabolite_195"/>
      <StateTemplateVariable objectReference="Metabolite_281"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_317"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_271"/>
      <StateTemplateVariable objectReference="Metabolite_285"/>
      <StateTemplateVariable objectReference="Metabolite_343"/>
      <StateTemplateVariable objectReference="Metabolite_351"/>
      <StateTemplateVariable objectReference="Metabolite_247"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_283"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_275"/>
      <StateTemplateVariable objectReference="Metabolite_295"/>
      <StateTemplateVariable objectReference="Metabolite_323"/>
      <StateTemplateVariable objectReference="Metabolite_359"/>
      <StateTemplateVariable objectReference="Metabolite_265"/>
      <StateTemplateVariable objectReference="Metabolite_289"/>
      <StateTemplateVariable objectReference="Metabolite_303"/>
      <StateTemplateVariable objectReference="Metabolite_311"/>
      <StateTemplateVariable objectReference="Metabolite_279"/>
      <StateTemplateVariable objectReference="Metabolite_305"/>
      <StateTemplateVariable objectReference="Metabolite_291"/>
      <StateTemplateVariable objectReference="Metabolite_269"/>
      <StateTemplateVariable objectReference="Metabolite_313"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_245"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_235"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_353"/>
      <StateTemplateVariable objectReference="Metabolite_333"/>
      <StateTemplateVariable objectReference="Metabolite_345"/>
      <StateTemplateVariable objectReference="Metabolite_257"/>
      <StateTemplateVariable objectReference="Metabolite_253"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_249"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_319"/>
      <StateTemplateVariable objectReference="Metabolite_243"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_239"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="Metabolite_181"/>
      <StateTemplateVariable objectReference="Metabolite_251"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_335"/>
      <StateTemplateVariable objectReference="Metabolite_233"/>
      <StateTemplateVariable objectReference="Metabolite_237"/>
      <StateTemplateVariable objectReference="Metabolite_241"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_255"/>
      <StateTemplateVariable objectReference="Metabolite_355"/>
      <StateTemplateVariable objectReference="Metabolite_347"/>
      <StateTemplateVariable objectReference="Metabolite_259"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_361"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_187"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_261"/>
      <StateTemplateVariable objectReference="Metabolite_267"/>
      <StateTemplateVariable objectReference="Metabolite_273"/>
      <StateTemplateVariable objectReference="Metabolite_277"/>
      <StateTemplateVariable objectReference="Metabolite_287"/>
      <StateTemplateVariable objectReference="Metabolite_293"/>
      <StateTemplateVariable objectReference="Metabolite_297"/>
      <StateTemplateVariable objectReference="Metabolite_299"/>
      <StateTemplateVariable objectReference="Metabolite_301"/>
      <StateTemplateVariable objectReference="Metabolite_307"/>
      <StateTemplateVariable objectReference="Metabolite_309"/>
      <StateTemplateVariable objectReference="Metabolite_315"/>
      <StateTemplateVariable objectReference="Metabolite_321"/>
      <StateTemplateVariable objectReference="Metabolite_325"/>
      <StateTemplateVariable objectReference="Metabolite_327"/>
      <StateTemplateVariable objectReference="Metabolite_329"/>
      <StateTemplateVariable objectReference="Metabolite_331"/>
      <StateTemplateVariable objectReference="Metabolite_337"/>
      <StateTemplateVariable objectReference="Metabolite_339"/>
      <StateTemplateVariable objectReference="Metabolite_341"/>
      <StateTemplateVariable objectReference="Metabolite_349"/>
      <StateTemplateVariable objectReference="Metabolite_357"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_183"/>
      <StateTemplateVariable objectReference="Metabolite_189"/>
      <StateTemplateVariable objectReference="Metabolite_191"/>
      <StateTemplateVariable objectReference="Metabolite_193"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_263"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.02214179e+023 7.2867915659e+024 1.204428358e+025 6.02214179e+022 8.671884177599992e+023 2.6497423876e+023 4.817713432e+023 9.033212684999999e+022 6.02214179e+021 1.5657568654e+023 5.8414775363e+023 2.2884138802e+023 1.4453140296e+023 6.02214179e+021 6.02214179e+021 0 1.6861997012e+023 3.5530636561e+022 6.02214179e+019 1.8668639549e+021 6.02214179e+019 6.02214179e+019 6.02214179e+019 6.02214179e+023 6.02214179e+019 6.02214179e+019 1.02978624609e+023 4.817713432e+022 2.17399318619e+024 6.02214179e+022 6.02214179e+019 6.02214179e+019 6.02214179e+022 6.02214179e+019 1.3248711938e+023 0 0 0 0 0 0 0 5.9016989542e+023 6.02214179e+019 6.02214179e+019 6.02214179e+019 1.806642537e+020 6.02214179e+019 6.02214179e+019 6.02214179e+023 6.02214179e+019 2.7701852234e+022 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+023 0 0 0 6.02214179e+023 0 0 0 0 0 0 0 0 0 6.02214179e+019 3.613285074e+022 6.02214179e+019 6.02214179e+022 6.02214179e+019 0 0 6.022141499999998e+023 0 0 6.02214179e+019 6.02214179e+023 6.022141499732765e+023 6.02214179e+023 6.022141499999998e+023 6.022141499999998e+023 0 0 0 6.02214179e+019 0 6.022141499999998e+023 0 0 6.022141499732765e+023 0 6.02214179e+019 6.02214179e+019 7.226570147999999e+023 6.02214179e+019 6.02214179e+019 6.02214179e+023 6.02214179e+019 6.022141499999998e+023 6.02214179e+022 1.806642537e+023 0 6.022141499999998e+023 6.022141499999998e+023 0 6.022141499999998e+023 0 6.022141499999998e+023 0 0 0 0 0 2.0475282086e+025 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+023 6.02214179e+021 6.02214179e+023 0 1.7 1210 0.5882352941176471 0.0008264462809917355 NaN 0 0 0 0 6.02214179e+023 5.8414775363e+023 1.6861997012e+023 2.2884138802e+023 1.4453140296e+023 1.3248711938e+023 6.02214179e+021 1.5657568654e+023 9.033212684999999e+022 4.817713432e+023 2.6497423876e+023 8.671884177599992e+023 6.02214179e+023 2.1077496265e+024 6.02214179e+023 6.02214179e+023 6.02214179e+021 6.02214179e+021 3.011070895e+023 6.022141499999998e+023 3.011070895e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.022141499999998e+023 6.02214179e+023 6.022141499732765e+023 6.022141499732765e+023 6.022141499732765e+023 3.011070895e+023 3.011070895e+023 6.022141499732765e+023 6.022141499999998e+023 6.022141499999998e+023 6.02214179e+023 6.02214179e+023 6.02214179e+019 6.02214179e+019 6.02214179e+023 6.02214179e+023 6.02214179e+023 1.204428358e+024 6.02214179e+023 0 6.02214179e+023 6.02214179e+023 0 1 1 2 0.00850607781012331 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="500"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Cpt1],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1000"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9722.09"/>
            <Parameter name="UpperBound" type="cn" value="100000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.703778"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K3,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.24123"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=K4,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="997.263"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=Vf,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.2249"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[RORgT Activation],ParameterGroup=Parameters,Parameter=Vr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Iteration Limit" type="unsignedInteger" value="2000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="50"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[RORgt-ligand],Reference=Concentration"/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="1"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="40"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-006"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-006"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[FOXP3R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[FOXP3R],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[IL17R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Values[IL17R],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GATA3-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[GATA3-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IFNg-IFNgR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNg-IFNgR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IFNgR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNgR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IFNg]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IFNg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL10-IL10R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10-IL10R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL10R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL10]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL12-IL12R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12-IL12R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL12R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL12]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL17-IL17R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17-IL17R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL17R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL17]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL17],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL18-IL18R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18-IL18R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL18R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL18]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL18],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL2-IL2R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2-IL2R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL21-IL21R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21-IL21R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL21R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL21]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL21],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL23-IL23R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL23-IL23R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL23R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL23R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL2R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL4-IL4R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4-IL4R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL4R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL4]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL6-IL6R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6-IL6R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL6R]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IL6]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IL6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IRAK1-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[IRAK1-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[JAK1-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[JAK1-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L-PPARg]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[L-PPARg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PPARg]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[PPARg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RORgt-ligand]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[RORgt-ligand],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SOCS1-JAKs]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[SOCS1-JAKs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT1-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT1-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT3-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT3-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT4-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT4-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT5-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT5-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT6-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[STAT6-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TGFb-TGFbR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFb-TGFbR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TGFbR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFbR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TGFb]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[TGFb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tbet-P]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[Tbet-P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[acetylated FOXP3]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[acetylated FOXP3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIFNg]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIFNg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL10]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL12]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL17]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL17],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL18]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL18],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL21]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL21],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL23]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL23],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL4]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eIL6]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eIL6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eTGFb]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eTGFb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p40/p19 dimer]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p40/p19 dimer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p50/p65 dimer]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[T Helper Cell],Vector=Metabolites[p50/p65 dimer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations Metabolic" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[10AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[10EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[10KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[10KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[12AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[12EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[12KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[12KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[14AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[14EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[14KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[14KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[16AcylCarn]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16AcylCarn],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[16AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[16EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[16KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[16KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[2KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[2KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[4EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[4EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[4KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[4KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[6EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[6EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[6KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[6KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[8AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[8EnoylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8EnoylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[8KetoAcyl]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[8KetoAcyl],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ADP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ADP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AKG]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[AKG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Acetyl-CoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Acetyl-CoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CIT]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[CIT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Carnitine]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Carnitine],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[FA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GAP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[GAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GR3P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[GR3P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Glucose]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Glucose],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Glycerol]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Glycerol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lactate]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Lactate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MAL]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[MAL],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NADH]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NADH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[OAA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[OAA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PEP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[PEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pyruvate]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[Pyruvate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SUC]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[SUC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TGL]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[TGL],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eFA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eFA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eGlucose]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eGlucose],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eGlycerol]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eGlycerol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[eLactate]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[eLactate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m10AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m10AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m12AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m12AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m14AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m14AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m16AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m16AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m4AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m4AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m6AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m6AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[m8AcylCoA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Compartments[default],Vector=Metabolites[m8AcylCoA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="ATP Tracking" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(AKG dehydrogenase).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[AKG dehydrogenase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(ATP Usage).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[ATP Usage],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(GAPDH Enolase).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[GAPDH Enolase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Glycerol Phosphate).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Glycerol Phosphate],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Hexokinase).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Hexokinase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(PI PFK FBA).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[PI PFK FBA],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Pyruvate kinase).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[Pyruvate kinase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(SUC synthetase, SUCDH, Fumarase).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[SUC synthetase\, SUCDH\, Fumarase],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(TGL Synthesis).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity,Vector=Reactions[TGL Synthesis],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000451.xml">
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="parameter_2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="parameter_3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="parameter_4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re19" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re28" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="re34" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="re35" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re39" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re44" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re45" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re46" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_245"/>
    <SBMLMap SBMLid="s10" COPASIkey="Metabolite_263"/>
    <SBMLMap SBMLid="s11" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s12" COPASIkey="Metabolite_239"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_237"/>
    <SBMLMap SBMLid="s14" COPASIkey="Metabolite_235"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_243"/>
    <SBMLMap SBMLid="s20" COPASIkey="Metabolite_265"/>
    <SBMLMap SBMLid="s21" COPASIkey="Metabolite_269"/>
    <SBMLMap SBMLid="s22" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_233"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="s26" COPASIkey="Metabolite_279"/>
    <SBMLMap SBMLid="s27" COPASIkey="Metabolite_305"/>
    <SBMLMap SBMLid="s28" COPASIkey="Metabolite_275"/>
    <SBMLMap SBMLid="s29" COPASIkey="Metabolite_303"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_241"/>
    <SBMLMap SBMLid="s30" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="s31" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="s32" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="s33" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="s34" COPASIkey="Metabolite_313"/>
    <SBMLMap SBMLid="s35" COPASIkey="Metabolite_311"/>
    <SBMLMap SBMLid="s36" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="s37" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="s38" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="s39" COPASIkey="Metabolite_295"/>
    <SBMLMap SBMLid="s40" COPASIkey="Metabolite_323"/>
    <SBMLMap SBMLid="s43" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="s44" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="s45" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="s46" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="s47" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="s48" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="s49" COPASIkey="Metabolite_291"/>
    <SBMLMap SBMLid="s50" COPASIkey="Metabolite_289"/>
    <SBMLMap SBMLid="s51" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s52" COPASIkey="Metabolite_247"/>
    <SBMLMap SBMLid="s53" COPASIkey="Metabolite_251"/>
    <SBMLMap SBMLid="s54" COPASIkey="Metabolite_249"/>
    <SBMLMap SBMLid="s55" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s57" COPASIkey="Metabolite_281"/>
    <SBMLMap SBMLid="s58" COPASIkey="Metabolite_253"/>
    <SBMLMap SBMLid="s59" COPASIkey="Metabolite_255"/>
    <SBMLMap SBMLid="s62" COPASIkey="Metabolite_257"/>
    <SBMLMap SBMLid="s63" COPASIkey="Metabolite_259"/>
    <SBMLMap SBMLid="s65" COPASIkey="Metabolite_261"/>
    <SBMLMap SBMLid="s67" COPASIkey="Metabolite_267"/>
    <SBMLMap SBMLid="s68" COPASIkey="Metabolite_271"/>
    <SBMLMap SBMLid="s69" COPASIkey="Metabolite_273"/>
    <SBMLMap SBMLid="s70" COPASIkey="Metabolite_277"/>
    <SBMLMap SBMLid="s73" COPASIkey="Metabolite_283"/>
    <SBMLMap SBMLid="s74" COPASIkey="Metabolite_285"/>
    <SBMLMap SBMLid="s75" COPASIkey="Metabolite_287"/>
    <SBMLMap SBMLid="s76" COPASIkey="Metabolite_293"/>
    <SBMLMap SBMLid="s77" COPASIkey="Metabolite_297"/>
    <SBMLMap SBMLid="s78" COPASIkey="Metabolite_299"/>
    <SBMLMap SBMLid="s79" COPASIkey="Metabolite_301"/>
    <SBMLMap SBMLid="s80" COPASIkey="Metabolite_307"/>
    <SBMLMap SBMLid="s81" COPASIkey="Metabolite_309"/>
    <SBMLMap SBMLid="s82" COPASIkey="Metabolite_315"/>
    <SBMLMap SBMLid="s83" COPASIkey="Metabolite_319"/>
    <SBMLMap SBMLid="s85" COPASIkey="Metabolite_317"/>
    <SBMLMap SBMLid="s86" COPASIkey="Metabolite_321"/>
    <SBMLMap SBMLid="s87" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s89" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="s90" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_329"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_331"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="species_13" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="species_18" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="species_20" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="species_22" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="species_23" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="species_24" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="species_26" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="species_27" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_335"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_333"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_337"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_339"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_341"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_325"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_327"/>
  </SBMLReference>
</COPASI>
