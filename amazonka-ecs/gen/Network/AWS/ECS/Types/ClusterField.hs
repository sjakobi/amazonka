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
-- Module      : Network.AWS.ECS.Types.ClusterField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ClusterField
  ( ClusterField
      ( ..,
        ClusterFieldATTACHMENTS,
        ClusterFieldSETTINGS,
        ClusterFieldSTATISTICS,
        ClusterFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClusterField = ClusterField'
  { fromClusterField ::
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

pattern ClusterFieldATTACHMENTS :: ClusterField
pattern ClusterFieldATTACHMENTS = ClusterField' "ATTACHMENTS"

pattern ClusterFieldSETTINGS :: ClusterField
pattern ClusterFieldSETTINGS = ClusterField' "SETTINGS"

pattern ClusterFieldSTATISTICS :: ClusterField
pattern ClusterFieldSTATISTICS = ClusterField' "STATISTICS"

pattern ClusterFieldTAGS :: ClusterField
pattern ClusterFieldTAGS = ClusterField' "TAGS"

{-# COMPLETE
  ClusterFieldATTACHMENTS,
  ClusterFieldSETTINGS,
  ClusterFieldSTATISTICS,
  ClusterFieldTAGS,
  ClusterField'
  #-}

instance Prelude.FromText ClusterField where
  parser = ClusterField' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClusterField where
  toText (ClusterField' x) = x

instance Prelude.Hashable ClusterField

instance Prelude.NFData ClusterField

instance Prelude.ToByteString ClusterField

instance Prelude.ToQuery ClusterField

instance Prelude.ToHeader ClusterField

instance Prelude.ToJSON ClusterField where
  toJSON = Prelude.toJSONText
