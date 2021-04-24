{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceLifecycleConfigSortKey
  ( NotebookInstanceLifecycleConfigSortKey
      ( ..,
        NILCSKCreationTime,
        NILCSKLastModifiedTime,
        NILCSKName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotebookInstanceLifecycleConfigSortKey
  = NotebookInstanceLifecycleConfigSortKey'
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

pattern NILCSKCreationTime :: NotebookInstanceLifecycleConfigSortKey
pattern NILCSKCreationTime = NotebookInstanceLifecycleConfigSortKey' "CreationTime"

pattern NILCSKLastModifiedTime :: NotebookInstanceLifecycleConfigSortKey
pattern NILCSKLastModifiedTime = NotebookInstanceLifecycleConfigSortKey' "LastModifiedTime"

pattern NILCSKName :: NotebookInstanceLifecycleConfigSortKey
pattern NILCSKName = NotebookInstanceLifecycleConfigSortKey' "Name"

{-# COMPLETE
  NILCSKCreationTime,
  NILCSKLastModifiedTime,
  NILCSKName,
  NotebookInstanceLifecycleConfigSortKey'
  #-}

instance FromText NotebookInstanceLifecycleConfigSortKey where
  parser = (NotebookInstanceLifecycleConfigSortKey' . mk) <$> takeText

instance ToText NotebookInstanceLifecycleConfigSortKey where
  toText (NotebookInstanceLifecycleConfigSortKey' ci) = original ci

instance Hashable NotebookInstanceLifecycleConfigSortKey

instance NFData NotebookInstanceLifecycleConfigSortKey

instance ToByteString NotebookInstanceLifecycleConfigSortKey

instance ToQuery NotebookInstanceLifecycleConfigSortKey

instance ToHeader NotebookInstanceLifecycleConfigSortKey

instance ToJSON NotebookInstanceLifecycleConfigSortKey where
  toJSON = toJSONText
