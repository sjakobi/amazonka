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
-- Module      : Network.AWS.ECS.Types.ClusterSettingName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ClusterSettingName
  ( ClusterSettingName
      ( ..,
        ClusterSettingNameContainerInsights
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClusterSettingName = ClusterSettingName'
  { fromClusterSettingName ::
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

pattern ClusterSettingNameContainerInsights :: ClusterSettingName
pattern ClusterSettingNameContainerInsights = ClusterSettingName' "containerInsights"

{-# COMPLETE
  ClusterSettingNameContainerInsights,
  ClusterSettingName'
  #-}

instance Prelude.FromText ClusterSettingName where
  parser = ClusterSettingName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClusterSettingName where
  toText (ClusterSettingName' x) = x

instance Prelude.Hashable ClusterSettingName

instance Prelude.NFData ClusterSettingName

instance Prelude.ToByteString ClusterSettingName

instance Prelude.ToQuery ClusterSettingName

instance Prelude.ToHeader ClusterSettingName

instance Prelude.ToJSON ClusterSettingName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ClusterSettingName where
  parseJSON = Prelude.parseJSONText "ClusterSettingName"
