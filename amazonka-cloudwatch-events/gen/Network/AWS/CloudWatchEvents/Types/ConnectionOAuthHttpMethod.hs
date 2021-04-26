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
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHttpMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHttpMethod
  ( ConnectionOAuthHttpMethod
      ( ..,
        ConnectionOAuthHttpMethodGET,
        ConnectionOAuthHttpMethodPOST,
        ConnectionOAuthHttpMethodPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionOAuthHttpMethod = ConnectionOAuthHttpMethod'
  { fromConnectionOAuthHttpMethod ::
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

pattern ConnectionOAuthHttpMethodGET :: ConnectionOAuthHttpMethod
pattern ConnectionOAuthHttpMethodGET = ConnectionOAuthHttpMethod' "GET"

pattern ConnectionOAuthHttpMethodPOST :: ConnectionOAuthHttpMethod
pattern ConnectionOAuthHttpMethodPOST = ConnectionOAuthHttpMethod' "POST"

pattern ConnectionOAuthHttpMethodPUT :: ConnectionOAuthHttpMethod
pattern ConnectionOAuthHttpMethodPUT = ConnectionOAuthHttpMethod' "PUT"

{-# COMPLETE
  ConnectionOAuthHttpMethodGET,
  ConnectionOAuthHttpMethodPOST,
  ConnectionOAuthHttpMethodPUT,
  ConnectionOAuthHttpMethod'
  #-}

instance Prelude.FromText ConnectionOAuthHttpMethod where
  parser = ConnectionOAuthHttpMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionOAuthHttpMethod where
  toText (ConnectionOAuthHttpMethod' x) = x

instance Prelude.Hashable ConnectionOAuthHttpMethod

instance Prelude.NFData ConnectionOAuthHttpMethod

instance Prelude.ToByteString ConnectionOAuthHttpMethod

instance Prelude.ToQuery ConnectionOAuthHttpMethod

instance Prelude.ToHeader ConnectionOAuthHttpMethod

instance Prelude.ToJSON ConnectionOAuthHttpMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConnectionOAuthHttpMethod where
  parseJSON = Prelude.parseJSONText "ConnectionOAuthHttpMethod"
