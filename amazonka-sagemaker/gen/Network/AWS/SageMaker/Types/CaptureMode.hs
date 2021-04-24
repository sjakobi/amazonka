{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CaptureMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CaptureMode
  ( CaptureMode
      ( ..,
        Input,
        Output
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CaptureMode = CaptureMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Input :: CaptureMode
pattern Input = CaptureMode' "Input"

pattern Output :: CaptureMode
pattern Output = CaptureMode' "Output"

{-# COMPLETE
  Input,
  Output,
  CaptureMode'
  #-}

instance FromText CaptureMode where
  parser = (CaptureMode' . mk) <$> takeText

instance ToText CaptureMode where
  toText (CaptureMode' ci) = original ci

instance Hashable CaptureMode

instance NFData CaptureMode

instance ToByteString CaptureMode

instance ToQuery CaptureMode

instance ToHeader CaptureMode

instance ToJSON CaptureMode where
  toJSON = toJSONText

instance FromJSON CaptureMode where
  parseJSON = parseJSONText "CaptureMode"
