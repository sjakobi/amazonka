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
-- Module      : Network.AWS.SageMaker.Types.AppNetworkAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppNetworkAccessType
  ( AppNetworkAccessType
      ( ..,
        AppNetworkAccessTypePublicInternetOnly,
        AppNetworkAccessTypeVpcOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppNetworkAccessType = AppNetworkAccessType'
  { fromAppNetworkAccessType ::
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

pattern AppNetworkAccessTypePublicInternetOnly :: AppNetworkAccessType
pattern AppNetworkAccessTypePublicInternetOnly = AppNetworkAccessType' "PublicInternetOnly"

pattern AppNetworkAccessTypeVpcOnly :: AppNetworkAccessType
pattern AppNetworkAccessTypeVpcOnly = AppNetworkAccessType' "VpcOnly"

{-# COMPLETE
  AppNetworkAccessTypePublicInternetOnly,
  AppNetworkAccessTypeVpcOnly,
  AppNetworkAccessType'
  #-}

instance Prelude.FromText AppNetworkAccessType where
  parser = AppNetworkAccessType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppNetworkAccessType where
  toText (AppNetworkAccessType' x) = x

instance Prelude.Hashable AppNetworkAccessType

instance Prelude.NFData AppNetworkAccessType

instance Prelude.ToByteString AppNetworkAccessType

instance Prelude.ToQuery AppNetworkAccessType

instance Prelude.ToHeader AppNetworkAccessType

instance Prelude.ToJSON AppNetworkAccessType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AppNetworkAccessType where
  parseJSON = Prelude.parseJSONText "AppNetworkAccessType"
