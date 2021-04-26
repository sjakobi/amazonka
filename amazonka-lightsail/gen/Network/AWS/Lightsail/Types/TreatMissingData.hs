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
-- Module      : Network.AWS.Lightsail.Types.TreatMissingData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.TreatMissingData
  ( TreatMissingData
      ( ..,
        TreatMissingDataBreaching,
        TreatMissingDataIgnore,
        TreatMissingDataMissing,
        TreatMissingDataNotBreaching
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TreatMissingData = TreatMissingData'
  { fromTreatMissingData ::
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

pattern TreatMissingDataBreaching :: TreatMissingData
pattern TreatMissingDataBreaching = TreatMissingData' "breaching"

pattern TreatMissingDataIgnore :: TreatMissingData
pattern TreatMissingDataIgnore = TreatMissingData' "ignore"

pattern TreatMissingDataMissing :: TreatMissingData
pattern TreatMissingDataMissing = TreatMissingData' "missing"

pattern TreatMissingDataNotBreaching :: TreatMissingData
pattern TreatMissingDataNotBreaching = TreatMissingData' "notBreaching"

{-# COMPLETE
  TreatMissingDataBreaching,
  TreatMissingDataIgnore,
  TreatMissingDataMissing,
  TreatMissingDataNotBreaching,
  TreatMissingData'
  #-}

instance Prelude.FromText TreatMissingData where
  parser = TreatMissingData' Prelude.<$> Prelude.takeText

instance Prelude.ToText TreatMissingData where
  toText (TreatMissingData' x) = x

instance Prelude.Hashable TreatMissingData

instance Prelude.NFData TreatMissingData

instance Prelude.ToByteString TreatMissingData

instance Prelude.ToQuery TreatMissingData

instance Prelude.ToHeader TreatMissingData

instance Prelude.ToJSON TreatMissingData where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TreatMissingData where
  parseJSON = Prelude.parseJSONText "TreatMissingData"
