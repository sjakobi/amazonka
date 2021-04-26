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
-- Module      : Network.AWS.SageMaker.Types.ListEdgePackagingJobsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListEdgePackagingJobsSortBy
  ( ListEdgePackagingJobsSortBy
      ( ..,
        ListEdgePackagingJobsSortByCREATIONTIME,
        ListEdgePackagingJobsSortByLASTMODIFIEDTIME,
        ListEdgePackagingJobsSortByMODELNAME,
        ListEdgePackagingJobsSortByNAME,
        ListEdgePackagingJobsSortBySTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListEdgePackagingJobsSortBy = ListEdgePackagingJobsSortBy'
  { fromListEdgePackagingJobsSortBy ::
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

pattern ListEdgePackagingJobsSortByCREATIONTIME :: ListEdgePackagingJobsSortBy
pattern ListEdgePackagingJobsSortByCREATIONTIME = ListEdgePackagingJobsSortBy' "CREATION_TIME"

pattern ListEdgePackagingJobsSortByLASTMODIFIEDTIME :: ListEdgePackagingJobsSortBy
pattern ListEdgePackagingJobsSortByLASTMODIFIEDTIME = ListEdgePackagingJobsSortBy' "LAST_MODIFIED_TIME"

pattern ListEdgePackagingJobsSortByMODELNAME :: ListEdgePackagingJobsSortBy
pattern ListEdgePackagingJobsSortByMODELNAME = ListEdgePackagingJobsSortBy' "MODEL_NAME"

pattern ListEdgePackagingJobsSortByNAME :: ListEdgePackagingJobsSortBy
pattern ListEdgePackagingJobsSortByNAME = ListEdgePackagingJobsSortBy' "NAME"

pattern ListEdgePackagingJobsSortBySTATUS :: ListEdgePackagingJobsSortBy
pattern ListEdgePackagingJobsSortBySTATUS = ListEdgePackagingJobsSortBy' "STATUS"

{-# COMPLETE
  ListEdgePackagingJobsSortByCREATIONTIME,
  ListEdgePackagingJobsSortByLASTMODIFIEDTIME,
  ListEdgePackagingJobsSortByMODELNAME,
  ListEdgePackagingJobsSortByNAME,
  ListEdgePackagingJobsSortBySTATUS,
  ListEdgePackagingJobsSortBy'
  #-}

instance Prelude.FromText ListEdgePackagingJobsSortBy where
  parser = ListEdgePackagingJobsSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListEdgePackagingJobsSortBy where
  toText (ListEdgePackagingJobsSortBy' x) = x

instance Prelude.Hashable ListEdgePackagingJobsSortBy

instance Prelude.NFData ListEdgePackagingJobsSortBy

instance Prelude.ToByteString ListEdgePackagingJobsSortBy

instance Prelude.ToQuery ListEdgePackagingJobsSortBy

instance Prelude.ToHeader ListEdgePackagingJobsSortBy

instance Prelude.ToJSON ListEdgePackagingJobsSortBy where
  toJSON = Prelude.toJSONText
