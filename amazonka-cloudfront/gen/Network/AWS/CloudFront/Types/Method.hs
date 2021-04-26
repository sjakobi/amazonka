{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.Method
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Method
  ( Method
      ( ..,
        MethodDELETE,
        MethodGET,
        MethodHEAD,
        MethodOPTIONS,
        MethodPATCH,
        MethodPOST,
        MethodPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Method = Method' {fromMethod :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern MethodDELETE :: Method
pattern MethodDELETE = Method' "DELETE"

pattern MethodGET :: Method
pattern MethodGET = Method' "GET"

pattern MethodHEAD :: Method
pattern MethodHEAD = Method' "HEAD"

pattern MethodOPTIONS :: Method
pattern MethodOPTIONS = Method' "OPTIONS"

pattern MethodPATCH :: Method
pattern MethodPATCH = Method' "PATCH"

pattern MethodPOST :: Method
pattern MethodPOST = Method' "POST"

pattern MethodPUT :: Method
pattern MethodPUT = Method' "PUT"

{-# COMPLETE
  MethodDELETE,
  MethodGET,
  MethodHEAD,
  MethodOPTIONS,
  MethodPATCH,
  MethodPOST,
  MethodPUT,
  Method'
  #-}

instance Prelude.FromText Method where
  parser = Method' Prelude.<$> Prelude.takeText

instance Prelude.ToText Method where
  toText (Method' x) = x

instance Prelude.Hashable Method

instance Prelude.NFData Method

instance Prelude.ToByteString Method

instance Prelude.ToQuery Method

instance Prelude.ToHeader Method

instance Prelude.FromXML Method where
  parseXML = Prelude.parseXMLText "Method"

instance Prelude.ToXML Method where
  toXML = Prelude.toXMLText
