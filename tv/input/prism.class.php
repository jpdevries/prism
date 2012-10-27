<?php
class PrismInputRender extends modTemplateVarInputRender {
    public function getTemplate() {
        return $this->modx->getOption('core_path').'components/prism/tv/input/tpl/prism.tpl';
    }
    public function process($value,array $params = array()) {
 
    }
}
return 'PrismInputRender';