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
-- Module      : Network.AWS.EC2.Types.InstanceMatchCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMatchCriteria
  ( InstanceMatchCriteria
      ( ..,
        InstanceMatchCriteriaOpen,
        InstanceMatchCriteriaTargeted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceMatchCriteria = InstanceMatchCriteria'
  { fromInstanceMatchCriteria ::
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

pattern InstanceMatchCriteriaOpen :: InstanceMatchCriteria
pattern InstanceMatchCriteriaOpen = InstanceMatchCriteria' "open"

pattern InstanceMatchCriteriaTargeted :: InstanceMatchCriteria
pattern InstanceMatchCriteriaTargeted = InstanceMatchCriteria' "targeted"

{-# COMPLETE
  InstanceMatchCriteriaOpen,
  InstanceMatchCriteriaTargeted,
  InstanceMatchCriteria'
  #-}

instance Prelude.FromText InstanceMatchCriteria where
  parser = InstanceMatchCriteria' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceMatchCriteria where
  toText (InstanceMatchCriteria' x) = x

instance Prelude.Hashable InstanceMatchCriteria

instance Prelude.NFData InstanceMatchCriteria

instance Prelude.ToByteString InstanceMatchCriteria

instance Prelude.ToQuery InstanceMatchCriteria

instance Prelude.ToHeader InstanceMatchCriteria

instance Prelude.FromXML InstanceMatchCriteria where
  parseXML = Prelude.parseXMLText "InstanceMatchCriteria"
