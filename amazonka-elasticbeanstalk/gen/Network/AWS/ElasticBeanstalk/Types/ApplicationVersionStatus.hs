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
-- Module      : Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
  ( ApplicationVersionStatus
      ( ..,
        ApplicationVersionStatusBuilding,
        ApplicationVersionStatusFailed,
        ApplicationVersionStatusProcessed,
        ApplicationVersionStatusProcessing,
        ApplicationVersionStatusUnprocessed
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApplicationVersionStatus = ApplicationVersionStatus'
  { fromApplicationVersionStatus ::
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

pattern ApplicationVersionStatusBuilding :: ApplicationVersionStatus
pattern ApplicationVersionStatusBuilding = ApplicationVersionStatus' "Building"

pattern ApplicationVersionStatusFailed :: ApplicationVersionStatus
pattern ApplicationVersionStatusFailed = ApplicationVersionStatus' "Failed"

pattern ApplicationVersionStatusProcessed :: ApplicationVersionStatus
pattern ApplicationVersionStatusProcessed = ApplicationVersionStatus' "Processed"

pattern ApplicationVersionStatusProcessing :: ApplicationVersionStatus
pattern ApplicationVersionStatusProcessing = ApplicationVersionStatus' "Processing"

pattern ApplicationVersionStatusUnprocessed :: ApplicationVersionStatus
pattern ApplicationVersionStatusUnprocessed = ApplicationVersionStatus' "Unprocessed"

{-# COMPLETE
  ApplicationVersionStatusBuilding,
  ApplicationVersionStatusFailed,
  ApplicationVersionStatusProcessed,
  ApplicationVersionStatusProcessing,
  ApplicationVersionStatusUnprocessed,
  ApplicationVersionStatus'
  #-}

instance Prelude.FromText ApplicationVersionStatus where
  parser = ApplicationVersionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApplicationVersionStatus where
  toText (ApplicationVersionStatus' x) = x

instance Prelude.Hashable ApplicationVersionStatus

instance Prelude.NFData ApplicationVersionStatus

instance Prelude.ToByteString ApplicationVersionStatus

instance Prelude.ToQuery ApplicationVersionStatus

instance Prelude.ToHeader ApplicationVersionStatus

instance Prelude.FromXML ApplicationVersionStatus where
  parseXML = Prelude.parseXMLText "ApplicationVersionStatus"
