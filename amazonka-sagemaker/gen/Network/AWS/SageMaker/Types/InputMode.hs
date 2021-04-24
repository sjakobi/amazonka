{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.InputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InputMode
  ( InputMode
      ( ..,
        IMFile,
        IMPipe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InputMode = InputMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IMFile :: InputMode
pattern IMFile = InputMode' "File"

pattern IMPipe :: InputMode
pattern IMPipe = InputMode' "Pipe"

{-# COMPLETE
  IMFile,
  IMPipe,
  InputMode'
  #-}

instance FromText InputMode where
  parser = (InputMode' . mk) <$> takeText

instance ToText InputMode where
  toText (InputMode' ci) = original ci

instance Hashable InputMode

instance NFData InputMode

instance ToByteString InputMode

instance ToQuery InputMode

instance ToHeader InputMode

instance ToJSON InputMode where
  toJSON = toJSONText

instance FromJSON InputMode where
  parseJSON = parseJSONText "InputMode"
