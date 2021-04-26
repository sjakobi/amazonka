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
-- Module      : Network.AWS.EC2.Types.SpotInstanceInterruptionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceInterruptionBehavior
  ( SpotInstanceInterruptionBehavior
      ( ..,
        SpotInstanceInterruptionBehaviorHibernate,
        SpotInstanceInterruptionBehaviorStop,
        SpotInstanceInterruptionBehaviorTerminate
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SpotInstanceInterruptionBehavior = SpotInstanceInterruptionBehavior'
  { fromSpotInstanceInterruptionBehavior ::
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

pattern SpotInstanceInterruptionBehaviorHibernate :: SpotInstanceInterruptionBehavior
pattern SpotInstanceInterruptionBehaviorHibernate = SpotInstanceInterruptionBehavior' "hibernate"

pattern SpotInstanceInterruptionBehaviorStop :: SpotInstanceInterruptionBehavior
pattern SpotInstanceInterruptionBehaviorStop = SpotInstanceInterruptionBehavior' "stop"

pattern SpotInstanceInterruptionBehaviorTerminate :: SpotInstanceInterruptionBehavior
pattern SpotInstanceInterruptionBehaviorTerminate = SpotInstanceInterruptionBehavior' "terminate"

{-# COMPLETE
  SpotInstanceInterruptionBehaviorHibernate,
  SpotInstanceInterruptionBehaviorStop,
  SpotInstanceInterruptionBehaviorTerminate,
  SpotInstanceInterruptionBehavior'
  #-}

instance Prelude.FromText SpotInstanceInterruptionBehavior where
  parser = SpotInstanceInterruptionBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText SpotInstanceInterruptionBehavior where
  toText (SpotInstanceInterruptionBehavior' x) = x

instance Prelude.Hashable SpotInstanceInterruptionBehavior

instance Prelude.NFData SpotInstanceInterruptionBehavior

instance Prelude.ToByteString SpotInstanceInterruptionBehavior

instance Prelude.ToQuery SpotInstanceInterruptionBehavior

instance Prelude.ToHeader SpotInstanceInterruptionBehavior

instance Prelude.FromXML SpotInstanceInterruptionBehavior where
  parseXML = Prelude.parseXMLText "SpotInstanceInterruptionBehavior"
