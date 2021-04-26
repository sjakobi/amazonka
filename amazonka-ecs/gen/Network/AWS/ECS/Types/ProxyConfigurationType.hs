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
-- Module      : Network.AWS.ECS.Types.ProxyConfigurationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ProxyConfigurationType
  ( ProxyConfigurationType
      ( ..,
        ProxyConfigurationTypeAPPMESH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProxyConfigurationType = ProxyConfigurationType'
  { fromProxyConfigurationType ::
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

pattern ProxyConfigurationTypeAPPMESH :: ProxyConfigurationType
pattern ProxyConfigurationTypeAPPMESH = ProxyConfigurationType' "APPMESH"

{-# COMPLETE
  ProxyConfigurationTypeAPPMESH,
  ProxyConfigurationType'
  #-}

instance Prelude.FromText ProxyConfigurationType where
  parser = ProxyConfigurationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProxyConfigurationType where
  toText (ProxyConfigurationType' x) = x

instance Prelude.Hashable ProxyConfigurationType

instance Prelude.NFData ProxyConfigurationType

instance Prelude.ToByteString ProxyConfigurationType

instance Prelude.ToQuery ProxyConfigurationType

instance Prelude.ToHeader ProxyConfigurationType

instance Prelude.ToJSON ProxyConfigurationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProxyConfigurationType where
  parseJSON = Prelude.parseJSONText "ProxyConfigurationType"
