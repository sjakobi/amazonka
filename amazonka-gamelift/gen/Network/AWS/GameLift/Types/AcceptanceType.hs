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
-- Module      : Network.AWS.GameLift.Types.AcceptanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.AcceptanceType
  ( AcceptanceType
      ( ..,
        AcceptanceTypeACCEPT,
        AcceptanceTypeREJECT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AcceptanceType = AcceptanceType'
  { fromAcceptanceType ::
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

pattern AcceptanceTypeACCEPT :: AcceptanceType
pattern AcceptanceTypeACCEPT = AcceptanceType' "ACCEPT"

pattern AcceptanceTypeREJECT :: AcceptanceType
pattern AcceptanceTypeREJECT = AcceptanceType' "REJECT"

{-# COMPLETE
  AcceptanceTypeACCEPT,
  AcceptanceTypeREJECT,
  AcceptanceType'
  #-}

instance Prelude.FromText AcceptanceType where
  parser = AcceptanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AcceptanceType where
  toText (AcceptanceType' x) = x

instance Prelude.Hashable AcceptanceType

instance Prelude.NFData AcceptanceType

instance Prelude.ToByteString AcceptanceType

instance Prelude.ToQuery AcceptanceType

instance Prelude.ToHeader AcceptanceType

instance Prelude.ToJSON AcceptanceType where
  toJSON = Prelude.toJSONText
