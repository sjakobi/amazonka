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
-- Module      : Network.AWS.ECS.Types.FirelensConfigurationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.FirelensConfigurationType
  ( FirelensConfigurationType
      ( ..,
        FirelensConfigurationTypeFluentbit,
        FirelensConfigurationTypeFluentd
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FirelensConfigurationType = FirelensConfigurationType'
  { fromFirelensConfigurationType ::
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

pattern FirelensConfigurationTypeFluentbit :: FirelensConfigurationType
pattern FirelensConfigurationTypeFluentbit = FirelensConfigurationType' "fluentbit"

pattern FirelensConfigurationTypeFluentd :: FirelensConfigurationType
pattern FirelensConfigurationTypeFluentd = FirelensConfigurationType' "fluentd"

{-# COMPLETE
  FirelensConfigurationTypeFluentbit,
  FirelensConfigurationTypeFluentd,
  FirelensConfigurationType'
  #-}

instance Prelude.FromText FirelensConfigurationType where
  parser = FirelensConfigurationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FirelensConfigurationType where
  toText (FirelensConfigurationType' x) = x

instance Prelude.Hashable FirelensConfigurationType

instance Prelude.NFData FirelensConfigurationType

instance Prelude.ToByteString FirelensConfigurationType

instance Prelude.ToQuery FirelensConfigurationType

instance Prelude.ToHeader FirelensConfigurationType

instance Prelude.ToJSON FirelensConfigurationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FirelensConfigurationType where
  parseJSON = Prelude.parseJSONText "FirelensConfigurationType"
