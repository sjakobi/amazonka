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
-- Module      : Network.AWS.IoT.Types.MessageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.MessageFormat
  ( MessageFormat
      ( ..,
        MessageFormatJSON,
        MessageFormatRAW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageFormat = MessageFormat'
  { fromMessageFormat ::
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

pattern MessageFormatJSON :: MessageFormat
pattern MessageFormatJSON = MessageFormat' "JSON"

pattern MessageFormatRAW :: MessageFormat
pattern MessageFormatRAW = MessageFormat' "RAW"

{-# COMPLETE
  MessageFormatJSON,
  MessageFormatRAW,
  MessageFormat'
  #-}

instance Prelude.FromText MessageFormat where
  parser = MessageFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageFormat where
  toText (MessageFormat' x) = x

instance Prelude.Hashable MessageFormat

instance Prelude.NFData MessageFormat

instance Prelude.ToByteString MessageFormat

instance Prelude.ToQuery MessageFormat

instance Prelude.ToHeader MessageFormat

instance Prelude.ToJSON MessageFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MessageFormat where
  parseJSON = Prelude.parseJSONText "MessageFormat"
