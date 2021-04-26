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
-- Module      : Network.AWS.MediaLive.Types.InputSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSourceType
  ( InputSourceType
      ( ..,
        InputSourceTypeDYNAMIC,
        InputSourceTypeSTATIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | There are two types of input sources, static and dynamic. If an input
-- source is dynamic you can change the source url of the input dynamically
-- using an input switch action. However, the only input type to support a
-- dynamic url at this time is MP4_FILE. By default all input sources are
-- static.
newtype InputSourceType = InputSourceType'
  { fromInputSourceType ::
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

pattern InputSourceTypeDYNAMIC :: InputSourceType
pattern InputSourceTypeDYNAMIC = InputSourceType' "DYNAMIC"

pattern InputSourceTypeSTATIC :: InputSourceType
pattern InputSourceTypeSTATIC = InputSourceType' "STATIC"

{-# COMPLETE
  InputSourceTypeDYNAMIC,
  InputSourceTypeSTATIC,
  InputSourceType'
  #-}

instance Prelude.FromText InputSourceType where
  parser = InputSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputSourceType where
  toText (InputSourceType' x) = x

instance Prelude.Hashable InputSourceType

instance Prelude.NFData InputSourceType

instance Prelude.ToByteString InputSourceType

instance Prelude.ToQuery InputSourceType

instance Prelude.ToHeader InputSourceType

instance Prelude.FromJSON InputSourceType where
  parseJSON = Prelude.parseJSONText "InputSourceType"
