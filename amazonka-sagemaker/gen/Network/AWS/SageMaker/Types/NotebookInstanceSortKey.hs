{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceSortKey
  ( NotebookInstanceSortKey
      ( ..,
        NISKCreationTime,
        NISKName,
        NISKStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotebookInstanceSortKey
  = NotebookInstanceSortKey'
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

pattern NISKCreationTime :: NotebookInstanceSortKey
pattern NISKCreationTime = NotebookInstanceSortKey' "CreationTime"

pattern NISKName :: NotebookInstanceSortKey
pattern NISKName = NotebookInstanceSortKey' "Name"

pattern NISKStatus :: NotebookInstanceSortKey
pattern NISKStatus = NotebookInstanceSortKey' "Status"

{-# COMPLETE
  NISKCreationTime,
  NISKName,
  NISKStatus,
  NotebookInstanceSortKey'
  #-}

instance FromText NotebookInstanceSortKey where
  parser = (NotebookInstanceSortKey' . mk) <$> takeText

instance ToText NotebookInstanceSortKey where
  toText (NotebookInstanceSortKey' ci) = original ci

instance Hashable NotebookInstanceSortKey

instance NFData NotebookInstanceSortKey

instance ToByteString NotebookInstanceSortKey

instance ToQuery NotebookInstanceSortKey

instance ToHeader NotebookInstanceSortKey

instance ToJSON NotebookInstanceSortKey where
  toJSON = toJSONText
