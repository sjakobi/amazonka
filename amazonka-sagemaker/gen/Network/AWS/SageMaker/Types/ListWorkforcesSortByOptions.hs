{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ListWorkforcesSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListWorkforcesSortByOptions
  ( ListWorkforcesSortByOptions
      ( ..,
        LWSBOCreateDate,
        LWSBOName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListWorkforcesSortByOptions
  = ListWorkforcesSortByOptions'
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

pattern LWSBOCreateDate :: ListWorkforcesSortByOptions
pattern LWSBOCreateDate = ListWorkforcesSortByOptions' "CreateDate"

pattern LWSBOName :: ListWorkforcesSortByOptions
pattern LWSBOName = ListWorkforcesSortByOptions' "Name"

{-# COMPLETE
  LWSBOCreateDate,
  LWSBOName,
  ListWorkforcesSortByOptions'
  #-}

instance FromText ListWorkforcesSortByOptions where
  parser = (ListWorkforcesSortByOptions' . mk) <$> takeText

instance ToText ListWorkforcesSortByOptions where
  toText (ListWorkforcesSortByOptions' ci) = original ci

instance Hashable ListWorkforcesSortByOptions

instance NFData ListWorkforcesSortByOptions

instance ToByteString ListWorkforcesSortByOptions

instance ToQuery ListWorkforcesSortByOptions

instance ToHeader ListWorkforcesSortByOptions

instance ToJSON ListWorkforcesSortByOptions where
  toJSON = toJSONText
