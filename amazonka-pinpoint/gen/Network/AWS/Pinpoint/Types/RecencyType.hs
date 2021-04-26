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
-- Module      : Network.AWS.Pinpoint.Types.RecencyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.RecencyType
  ( RecencyType
      ( ..,
        RecencyTypeACTIVE,
        RecencyTypeINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecencyType = RecencyType'
  { fromRecencyType ::
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

pattern RecencyTypeACTIVE :: RecencyType
pattern RecencyTypeACTIVE = RecencyType' "ACTIVE"

pattern RecencyTypeINACTIVE :: RecencyType
pattern RecencyTypeINACTIVE = RecencyType' "INACTIVE"

{-# COMPLETE
  RecencyTypeACTIVE,
  RecencyTypeINACTIVE,
  RecencyType'
  #-}

instance Prelude.FromText RecencyType where
  parser = RecencyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecencyType where
  toText (RecencyType' x) = x

instance Prelude.Hashable RecencyType

instance Prelude.NFData RecencyType

instance Prelude.ToByteString RecencyType

instance Prelude.ToQuery RecencyType

instance Prelude.ToHeader RecencyType

instance Prelude.ToJSON RecencyType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecencyType where
  parseJSON = Prelude.parseJSONText "RecencyType"
