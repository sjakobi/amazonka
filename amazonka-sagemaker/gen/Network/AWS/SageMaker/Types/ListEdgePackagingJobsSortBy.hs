{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ListEdgePackagingJobsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListEdgePackagingJobsSortBy
  ( ListEdgePackagingJobsSortBy
      ( ..,
        LEPJSBCreationTime,
        LEPJSBLastModifiedTime,
        LEPJSBModelName,
        LEPJSBName,
        LEPJSBStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListEdgePackagingJobsSortBy
  = ListEdgePackagingJobsSortBy'
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

pattern LEPJSBCreationTime :: ListEdgePackagingJobsSortBy
pattern LEPJSBCreationTime = ListEdgePackagingJobsSortBy' "CREATION_TIME"

pattern LEPJSBLastModifiedTime :: ListEdgePackagingJobsSortBy
pattern LEPJSBLastModifiedTime = ListEdgePackagingJobsSortBy' "LAST_MODIFIED_TIME"

pattern LEPJSBModelName :: ListEdgePackagingJobsSortBy
pattern LEPJSBModelName = ListEdgePackagingJobsSortBy' "MODEL_NAME"

pattern LEPJSBName :: ListEdgePackagingJobsSortBy
pattern LEPJSBName = ListEdgePackagingJobsSortBy' "NAME"

pattern LEPJSBStatus :: ListEdgePackagingJobsSortBy
pattern LEPJSBStatus = ListEdgePackagingJobsSortBy' "STATUS"

{-# COMPLETE
  LEPJSBCreationTime,
  LEPJSBLastModifiedTime,
  LEPJSBModelName,
  LEPJSBName,
  LEPJSBStatus,
  ListEdgePackagingJobsSortBy'
  #-}

instance FromText ListEdgePackagingJobsSortBy where
  parser = (ListEdgePackagingJobsSortBy' . mk) <$> takeText

instance ToText ListEdgePackagingJobsSortBy where
  toText (ListEdgePackagingJobsSortBy' ci) = original ci

instance Hashable ListEdgePackagingJobsSortBy

instance NFData ListEdgePackagingJobsSortBy

instance ToByteString ListEdgePackagingJobsSortBy

instance ToQuery ListEdgePackagingJobsSortBy

instance ToHeader ListEdgePackagingJobsSortBy

instance ToJSON ListEdgePackagingJobsSortBy where
  toJSON = toJSONText
