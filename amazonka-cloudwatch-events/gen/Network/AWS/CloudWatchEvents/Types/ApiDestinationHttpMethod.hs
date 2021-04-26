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
-- Module      : Network.AWS.CloudWatchEvents.Types.ApiDestinationHttpMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ApiDestinationHttpMethod
  ( ApiDestinationHttpMethod
      ( ..,
        ApiDestinationHttpMethodDELETE,
        ApiDestinationHttpMethodGET,
        ApiDestinationHttpMethodHEAD,
        ApiDestinationHttpMethodOPTIONS,
        ApiDestinationHttpMethodPATCH,
        ApiDestinationHttpMethodPOST,
        ApiDestinationHttpMethodPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiDestinationHttpMethod = ApiDestinationHttpMethod'
  { fromApiDestinationHttpMethod ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ApiDestinationHttpMethodDELETE :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodDELETE = ApiDestinationHttpMethod' "DELETE"

pattern ApiDestinationHttpMethodGET :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodGET = ApiDestinationHttpMethod' "GET"

pattern ApiDestinationHttpMethodHEAD :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodHEAD = ApiDestinationHttpMethod' "HEAD"

pattern ApiDestinationHttpMethodOPTIONS :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodOPTIONS = ApiDestinationHttpMethod' "OPTIONS"

pattern ApiDestinationHttpMethodPATCH :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodPATCH = ApiDestinationHttpMethod' "PATCH"

pattern ApiDestinationHttpMethodPOST :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodPOST = ApiDestinationHttpMethod' "POST"

pattern ApiDestinationHttpMethodPUT :: ApiDestinationHttpMethod
pattern ApiDestinationHttpMethodPUT = ApiDestinationHttpMethod' "PUT"

{-# COMPLETE
  ApiDestinationHttpMethodDELETE,
  ApiDestinationHttpMethodGET,
  ApiDestinationHttpMethodHEAD,
  ApiDestinationHttpMethodOPTIONS,
  ApiDestinationHttpMethodPATCH,
  ApiDestinationHttpMethodPOST,
  ApiDestinationHttpMethodPUT,
  ApiDestinationHttpMethod'
  #-}

instance Prelude.FromText ApiDestinationHttpMethod where
  parser = ApiDestinationHttpMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiDestinationHttpMethod where
  toText (ApiDestinationHttpMethod' x) = x

instance Prelude.Hashable ApiDestinationHttpMethod

instance Prelude.NFData ApiDestinationHttpMethod

instance Prelude.ToByteString ApiDestinationHttpMethod

instance Prelude.ToQuery ApiDestinationHttpMethod

instance Prelude.ToHeader ApiDestinationHttpMethod

instance Prelude.ToJSON ApiDestinationHttpMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApiDestinationHttpMethod where
  parseJSON = Prelude.parseJSONText "ApiDestinationHttpMethod"
