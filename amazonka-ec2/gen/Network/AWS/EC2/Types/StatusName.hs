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
-- Module      : Network.AWS.EC2.Types.StatusName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.StatusName
  ( StatusName
      ( ..,
        StatusNameReachability
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype StatusName = StatusName'
  { fromStatusName ::
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

pattern StatusNameReachability :: StatusName
pattern StatusNameReachability = StatusName' "reachability"

{-# COMPLETE
  StatusNameReachability,
  StatusName'
  #-}

instance Prelude.FromText StatusName where
  parser = StatusName' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatusName where
  toText (StatusName' x) = x

instance Prelude.Hashable StatusName

instance Prelude.NFData StatusName

instance Prelude.ToByteString StatusName

instance Prelude.ToQuery StatusName

instance Prelude.ToHeader StatusName

instance Prelude.FromXML StatusName where
  parseXML = Prelude.parseXMLText "StatusName"
