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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
  ( OAuthFlowType
      ( ..,
        OAuthFlowTypeClientCredentials,
        OAuthFlowTypeCode,
        OAuthFlowTypeImplicit
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OAuthFlowType = OAuthFlowType'
  { fromOAuthFlowType ::
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

pattern OAuthFlowTypeClientCredentials :: OAuthFlowType
pattern OAuthFlowTypeClientCredentials = OAuthFlowType' "client_credentials"

pattern OAuthFlowTypeCode :: OAuthFlowType
pattern OAuthFlowTypeCode = OAuthFlowType' "code"

pattern OAuthFlowTypeImplicit :: OAuthFlowType
pattern OAuthFlowTypeImplicit = OAuthFlowType' "implicit"

{-# COMPLETE
  OAuthFlowTypeClientCredentials,
  OAuthFlowTypeCode,
  OAuthFlowTypeImplicit,
  OAuthFlowType'
  #-}

instance Prelude.FromText OAuthFlowType where
  parser = OAuthFlowType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OAuthFlowType where
  toText (OAuthFlowType' x) = x

instance Prelude.Hashable OAuthFlowType

instance Prelude.NFData OAuthFlowType

instance Prelude.ToByteString OAuthFlowType

instance Prelude.ToQuery OAuthFlowType

instance Prelude.ToHeader OAuthFlowType

instance Prelude.ToJSON OAuthFlowType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OAuthFlowType where
  parseJSON = Prelude.parseJSONText "OAuthFlowType"
