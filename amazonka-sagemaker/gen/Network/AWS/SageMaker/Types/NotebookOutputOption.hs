{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NotebookOutputOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookOutputOption
  ( NotebookOutputOption
      ( ..,
        NOOAllowed,
        NOODisabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotebookOutputOption
  = NotebookOutputOption'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NOOAllowed :: NotebookOutputOption
pattern NOOAllowed = NotebookOutputOption' "Allowed"

pattern NOODisabled :: NotebookOutputOption
pattern NOODisabled = NotebookOutputOption' "Disabled"

{-# COMPLETE
  NOOAllowed,
  NOODisabled,
  NotebookOutputOption'
  #-}

instance FromText NotebookOutputOption where
  parser = (NotebookOutputOption' . mk) <$> takeText

instance ToText NotebookOutputOption where
  toText (NotebookOutputOption' ci) = original ci

instance Hashable NotebookOutputOption

instance NFData NotebookOutputOption

instance ToByteString NotebookOutputOption

instance ToQuery NotebookOutputOption

instance ToHeader NotebookOutputOption

instance ToJSON NotebookOutputOption where
  toJSON = toJSONText

instance FromJSON NotebookOutputOption where
  parseJSON = parseJSONText "NotebookOutputOption"
