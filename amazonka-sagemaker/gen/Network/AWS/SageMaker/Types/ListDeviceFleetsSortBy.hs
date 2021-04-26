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
-- Module      : Network.AWS.SageMaker.Types.ListDeviceFleetsSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListDeviceFleetsSortBy
  ( ListDeviceFleetsSortBy
      ( ..,
        ListDeviceFleetsSortByCREATIONTIME,
        ListDeviceFleetsSortByLASTMODIFIEDTIME,
        ListDeviceFleetsSortByNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListDeviceFleetsSortBy = ListDeviceFleetsSortBy'
  { fromListDeviceFleetsSortBy ::
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

pattern ListDeviceFleetsSortByCREATIONTIME :: ListDeviceFleetsSortBy
pattern ListDeviceFleetsSortByCREATIONTIME = ListDeviceFleetsSortBy' "CREATION_TIME"

pattern ListDeviceFleetsSortByLASTMODIFIEDTIME :: ListDeviceFleetsSortBy
pattern ListDeviceFleetsSortByLASTMODIFIEDTIME = ListDeviceFleetsSortBy' "LAST_MODIFIED_TIME"

pattern ListDeviceFleetsSortByNAME :: ListDeviceFleetsSortBy
pattern ListDeviceFleetsSortByNAME = ListDeviceFleetsSortBy' "NAME"

{-# COMPLETE
  ListDeviceFleetsSortByCREATIONTIME,
  ListDeviceFleetsSortByLASTMODIFIEDTIME,
  ListDeviceFleetsSortByNAME,
  ListDeviceFleetsSortBy'
  #-}

instance Prelude.FromText ListDeviceFleetsSortBy where
  parser = ListDeviceFleetsSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListDeviceFleetsSortBy where
  toText (ListDeviceFleetsSortBy' x) = x

instance Prelude.Hashable ListDeviceFleetsSortBy

instance Prelude.NFData ListDeviceFleetsSortBy

instance Prelude.ToByteString ListDeviceFleetsSortBy

instance Prelude.ToQuery ListDeviceFleetsSortBy

instance Prelude.ToHeader ListDeviceFleetsSortBy

instance Prelude.ToJSON ListDeviceFleetsSortBy where
  toJSON = Prelude.toJSONText
