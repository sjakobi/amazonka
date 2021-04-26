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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
  ( EnvironmentStatus
      ( ..,
        EnvironmentStatusAborting,
        EnvironmentStatusLaunching,
        EnvironmentStatusLinkingFrom,
        EnvironmentStatusLinkingTo,
        EnvironmentStatusReady,
        EnvironmentStatusTerminated,
        EnvironmentStatusTerminating,
        EnvironmentStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentStatus = EnvironmentStatus'
  { fromEnvironmentStatus ::
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

pattern EnvironmentStatusAborting :: EnvironmentStatus
pattern EnvironmentStatusAborting = EnvironmentStatus' "Aborting"

pattern EnvironmentStatusLaunching :: EnvironmentStatus
pattern EnvironmentStatusLaunching = EnvironmentStatus' "Launching"

pattern EnvironmentStatusLinkingFrom :: EnvironmentStatus
pattern EnvironmentStatusLinkingFrom = EnvironmentStatus' "LinkingFrom"

pattern EnvironmentStatusLinkingTo :: EnvironmentStatus
pattern EnvironmentStatusLinkingTo = EnvironmentStatus' "LinkingTo"

pattern EnvironmentStatusReady :: EnvironmentStatus
pattern EnvironmentStatusReady = EnvironmentStatus' "Ready"

pattern EnvironmentStatusTerminated :: EnvironmentStatus
pattern EnvironmentStatusTerminated = EnvironmentStatus' "Terminated"

pattern EnvironmentStatusTerminating :: EnvironmentStatus
pattern EnvironmentStatusTerminating = EnvironmentStatus' "Terminating"

pattern EnvironmentStatusUpdating :: EnvironmentStatus
pattern EnvironmentStatusUpdating = EnvironmentStatus' "Updating"

{-# COMPLETE
  EnvironmentStatusAborting,
  EnvironmentStatusLaunching,
  EnvironmentStatusLinkingFrom,
  EnvironmentStatusLinkingTo,
  EnvironmentStatusReady,
  EnvironmentStatusTerminated,
  EnvironmentStatusTerminating,
  EnvironmentStatusUpdating,
  EnvironmentStatus'
  #-}

instance Prelude.FromText EnvironmentStatus where
  parser = EnvironmentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentStatus where
  toText (EnvironmentStatus' x) = x

instance Prelude.Hashable EnvironmentStatus

instance Prelude.NFData EnvironmentStatus

instance Prelude.ToByteString EnvironmentStatus

instance Prelude.ToQuery EnvironmentStatus

instance Prelude.ToHeader EnvironmentStatus

instance Prelude.FromXML EnvironmentStatus where
  parseXML = Prelude.parseXMLText "EnvironmentStatus"
