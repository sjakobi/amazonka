{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.QueueListBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueListBy
  ( QueueListBy
      ( ..,
        CreationDate,
        Name
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
data QueueListBy = QueueListBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreationDate :: QueueListBy
pattern CreationDate = QueueListBy' "CREATION_DATE"

pattern Name :: QueueListBy
pattern Name = QueueListBy' "NAME"

{-# COMPLETE
  CreationDate,
  Name,
  QueueListBy'
  #-}

instance FromText QueueListBy where
  parser = (QueueListBy' . mk) <$> takeText

instance ToText QueueListBy where
  toText (QueueListBy' ci) = original ci

instance Hashable QueueListBy

instance NFData QueueListBy

instance ToByteString QueueListBy

instance ToQuery QueueListBy

instance ToHeader QueueListBy

instance ToJSON QueueListBy where
  toJSON = toJSONText
