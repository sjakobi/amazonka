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
-- Module      : Network.AWS.EC2.Types.ElasticGpuStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ElasticGpuStatus
  ( ElasticGpuStatus
      ( ..,
        ElasticGpuStatusIMPAIRED,
        ElasticGpuStatusOK
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ElasticGpuStatus = ElasticGpuStatus'
  { fromElasticGpuStatus ::
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

pattern ElasticGpuStatusIMPAIRED :: ElasticGpuStatus
pattern ElasticGpuStatusIMPAIRED = ElasticGpuStatus' "IMPAIRED"

pattern ElasticGpuStatusOK :: ElasticGpuStatus
pattern ElasticGpuStatusOK = ElasticGpuStatus' "OK"

{-# COMPLETE
  ElasticGpuStatusIMPAIRED,
  ElasticGpuStatusOK,
  ElasticGpuStatus'
  #-}

instance Prelude.FromText ElasticGpuStatus where
  parser = ElasticGpuStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ElasticGpuStatus where
  toText (ElasticGpuStatus' x) = x

instance Prelude.Hashable ElasticGpuStatus

instance Prelude.NFData ElasticGpuStatus

instance Prelude.ToByteString ElasticGpuStatus

instance Prelude.ToQuery ElasticGpuStatus

instance Prelude.ToHeader ElasticGpuStatus

instance Prelude.FromXML ElasticGpuStatus where
  parseXML = Prelude.parseXMLText "ElasticGpuStatus"
