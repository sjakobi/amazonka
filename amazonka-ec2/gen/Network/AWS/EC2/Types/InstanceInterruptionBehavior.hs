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
-- Module      : Network.AWS.EC2.Types.InstanceInterruptionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceInterruptionBehavior
  ( InstanceInterruptionBehavior
      ( ..,
        InstanceInterruptionBehaviorHibernate,
        InstanceInterruptionBehaviorStop,
        InstanceInterruptionBehaviorTerminate
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceInterruptionBehavior = InstanceInterruptionBehavior'
  { fromInstanceInterruptionBehavior ::
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

pattern InstanceInterruptionBehaviorHibernate :: InstanceInterruptionBehavior
pattern InstanceInterruptionBehaviorHibernate = InstanceInterruptionBehavior' "hibernate"

pattern InstanceInterruptionBehaviorStop :: InstanceInterruptionBehavior
pattern InstanceInterruptionBehaviorStop = InstanceInterruptionBehavior' "stop"

pattern InstanceInterruptionBehaviorTerminate :: InstanceInterruptionBehavior
pattern InstanceInterruptionBehaviorTerminate = InstanceInterruptionBehavior' "terminate"

{-# COMPLETE
  InstanceInterruptionBehaviorHibernate,
  InstanceInterruptionBehaviorStop,
  InstanceInterruptionBehaviorTerminate,
  InstanceInterruptionBehavior'
  #-}

instance Prelude.FromText InstanceInterruptionBehavior where
  parser = InstanceInterruptionBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceInterruptionBehavior where
  toText (InstanceInterruptionBehavior' x) = x

instance Prelude.Hashable InstanceInterruptionBehavior

instance Prelude.NFData InstanceInterruptionBehavior

instance Prelude.ToByteString InstanceInterruptionBehavior

instance Prelude.ToQuery InstanceInterruptionBehavior

instance Prelude.ToHeader InstanceInterruptionBehavior

instance Prelude.FromXML InstanceInterruptionBehavior where
  parseXML = Prelude.parseXMLText "InstanceInterruptionBehavior"
