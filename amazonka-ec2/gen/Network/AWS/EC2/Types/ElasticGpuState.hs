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
-- Module      : Network.AWS.EC2.Types.ElasticGpuState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ElasticGpuState
  ( ElasticGpuState
      ( ..,
        ElasticGpuStateATTACHED
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ElasticGpuState = ElasticGpuState'
  { fromElasticGpuState ::
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

pattern ElasticGpuStateATTACHED :: ElasticGpuState
pattern ElasticGpuStateATTACHED = ElasticGpuState' "ATTACHED"

{-# COMPLETE
  ElasticGpuStateATTACHED,
  ElasticGpuState'
  #-}

instance Prelude.FromText ElasticGpuState where
  parser = ElasticGpuState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ElasticGpuState where
  toText (ElasticGpuState' x) = x

instance Prelude.Hashable ElasticGpuState

instance Prelude.NFData ElasticGpuState

instance Prelude.ToByteString ElasticGpuState

instance Prelude.ToQuery ElasticGpuState

instance Prelude.ToHeader ElasticGpuState

instance Prelude.FromXML ElasticGpuState where
  parseXML = Prelude.parseXMLText "ElasticGpuState"
