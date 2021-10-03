package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2078:Boolean;
      
      private var var_1680:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2078 = Boolean(parseInt(param1.@club));
         var_1680 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2078;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1680;
      }
   }
}
