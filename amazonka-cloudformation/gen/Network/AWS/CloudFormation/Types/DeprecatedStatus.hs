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
-- Module      : Network.AWS.CloudFormation.Types.DeprecatedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DeprecatedStatus
  ( DeprecatedStatus
      ( ..,
        DeprecatedStatusDEPRECATED,
        DeprecatedStatusLIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeprecatedStatus = DeprecatedStatus'
  { fromDeprecatedStatus ::
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

pattern DeprecatedStatusDEPRECATED :: DeprecatedStatus
pattern DeprecatedStatusDEPRECATED = DeprecatedStatus' "DEPRECATED"

pattern DeprecatedStatusLIVE :: DeprecatedStatus
pattern DeprecatedStatusLIVE = DeprecatedStatus' "LIVE"

{-# COMPLETE
  DeprecatedStatusDEPRECATED,
  DeprecatedStatusLIVE,
  DeprecatedStatus'
  #-}

instance Prelude.FromText DeprecatedStatus where
  parser = DeprecatedStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeprecatedStatus where
  toText (DeprecatedStatus' x) = x

instance Prelude.Hashable DeprecatedStatus

instance Prelude.NFData DeprecatedStatus

instance Prelude.ToByteString DeprecatedStatus

instance Prelude.ToQuery DeprecatedStatus

instance Prelude.ToHeader DeprecatedStatus

instance Prelude.FromXML DeprecatedStatus where
  parseXML = Prelude.parseXMLText "DeprecatedStatus"
