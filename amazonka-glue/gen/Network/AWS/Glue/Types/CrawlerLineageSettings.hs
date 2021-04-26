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
-- Module      : Network.AWS.Glue.Types.CrawlerLineageSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerLineageSettings
  ( CrawlerLineageSettings
      ( ..,
        CrawlerLineageSettingsDISABLE,
        CrawlerLineageSettingsENABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CrawlerLineageSettings = CrawlerLineageSettings'
  { fromCrawlerLineageSettings ::
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

pattern CrawlerLineageSettingsDISABLE :: CrawlerLineageSettings
pattern CrawlerLineageSettingsDISABLE = CrawlerLineageSettings' "DISABLE"

pattern CrawlerLineageSettingsENABLE :: CrawlerLineageSettings
pattern CrawlerLineageSettingsENABLE = CrawlerLineageSettings' "ENABLE"

{-# COMPLETE
  CrawlerLineageSettingsDISABLE,
  CrawlerLineageSettingsENABLE,
  CrawlerLineageSettings'
  #-}

instance Prelude.FromText CrawlerLineageSettings where
  parser = CrawlerLineageSettings' Prelude.<$> Prelude.takeText

instance Prelude.ToText CrawlerLineageSettings where
  toText (CrawlerLineageSettings' x) = x

instance Prelude.Hashable CrawlerLineageSettings

instance Prelude.NFData CrawlerLineageSettings

instance Prelude.ToByteString CrawlerLineageSettings

instance Prelude.ToQuery CrawlerLineageSettings

instance Prelude.ToHeader CrawlerLineageSettings

instance Prelude.ToJSON CrawlerLineageSettings where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CrawlerLineageSettings where
  parseJSON = Prelude.parseJSONText "CrawlerLineageSettings"
