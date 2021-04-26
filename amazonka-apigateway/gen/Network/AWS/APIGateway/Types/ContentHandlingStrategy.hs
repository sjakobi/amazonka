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
-- Module      : Network.AWS.APIGateway.Types.ContentHandlingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.ContentHandlingStrategy
  ( ContentHandlingStrategy
      ( ..,
        ContentHandlingStrategyCONVERTTOBINARY,
        ContentHandlingStrategyCONVERTTOTEXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContentHandlingStrategy = ContentHandlingStrategy'
  { fromContentHandlingStrategy ::
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

pattern ContentHandlingStrategyCONVERTTOBINARY :: ContentHandlingStrategy
pattern ContentHandlingStrategyCONVERTTOBINARY = ContentHandlingStrategy' "CONVERT_TO_BINARY"

pattern ContentHandlingStrategyCONVERTTOTEXT :: ContentHandlingStrategy
pattern ContentHandlingStrategyCONVERTTOTEXT = ContentHandlingStrategy' "CONVERT_TO_TEXT"

{-# COMPLETE
  ContentHandlingStrategyCONVERTTOBINARY,
  ContentHandlingStrategyCONVERTTOTEXT,
  ContentHandlingStrategy'
  #-}

instance Prelude.FromText ContentHandlingStrategy where
  parser = ContentHandlingStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContentHandlingStrategy where
  toText (ContentHandlingStrategy' x) = x

instance Prelude.Hashable ContentHandlingStrategy

instance Prelude.NFData ContentHandlingStrategy

instance Prelude.ToByteString ContentHandlingStrategy

instance Prelude.ToQuery ContentHandlingStrategy

instance Prelude.ToHeader ContentHandlingStrategy

instance Prelude.ToJSON ContentHandlingStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContentHandlingStrategy where
  parseJSON = Prelude.parseJSONText "ContentHandlingStrategy"
