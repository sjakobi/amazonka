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
-- Module      : Network.AWS.MQ.Types.EngineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.EngineType
  ( EngineType
      ( ..,
        EngineTypeACTIVEMQ,
        EngineTypeRABBITMQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of broker engine. Note: Currently, Amazon MQ supports ActiveMQ
-- and RabbitMQ.
newtype EngineType = EngineType'
  { fromEngineType ::
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

pattern EngineTypeACTIVEMQ :: EngineType
pattern EngineTypeACTIVEMQ = EngineType' "ACTIVEMQ"

pattern EngineTypeRABBITMQ :: EngineType
pattern EngineTypeRABBITMQ = EngineType' "RABBITMQ"

{-# COMPLETE
  EngineTypeACTIVEMQ,
  EngineTypeRABBITMQ,
  EngineType'
  #-}

instance Prelude.FromText EngineType where
  parser = EngineType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EngineType where
  toText (EngineType' x) = x

instance Prelude.Hashable EngineType

instance Prelude.NFData EngineType

instance Prelude.ToByteString EngineType

instance Prelude.ToQuery EngineType

instance Prelude.ToHeader EngineType

instance Prelude.ToJSON EngineType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EngineType where
  parseJSON = Prelude.parseJSONText "EngineType"
