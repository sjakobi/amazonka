{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortActionsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortActionsBy
  ( SortActionsBy
      ( ..,
        SABCreationTime,
        SABName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortActionsBy = SortActionsBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SABCreationTime :: SortActionsBy
pattern SABCreationTime = SortActionsBy' "CreationTime"

pattern SABName :: SortActionsBy
pattern SABName = SortActionsBy' "Name"

{-# COMPLETE
  SABCreationTime,
  SABName,
  SortActionsBy'
  #-}

instance FromText SortActionsBy where
  parser = (SortActionsBy' . mk) <$> takeText

instance ToText SortActionsBy where
  toText (SortActionsBy' ci) = original ci

instance Hashable SortActionsBy

instance NFData SortActionsBy

instance ToByteString SortActionsBy

instance ToQuery SortActionsBy

instance ToHeader SortActionsBy

instance ToJSON SortActionsBy where
  toJSON = toJSONText
