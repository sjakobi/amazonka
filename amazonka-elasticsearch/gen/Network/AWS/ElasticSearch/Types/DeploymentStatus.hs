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
-- Module      : Network.AWS.ElasticSearch.Types.DeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DeploymentStatus
  ( DeploymentStatus
      ( ..,
        DeploymentStatusCOMPLETED,
        DeploymentStatusELIGIBLE,
        DeploymentStatusINPROGRESS,
        DeploymentStatusNOTELIGIBLE,
        DeploymentStatusPENDINGUPDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentStatus = DeploymentStatus'
  { fromDeploymentStatus ::
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

pattern DeploymentStatusCOMPLETED :: DeploymentStatus
pattern DeploymentStatusCOMPLETED = DeploymentStatus' "COMPLETED"

pattern DeploymentStatusELIGIBLE :: DeploymentStatus
pattern DeploymentStatusELIGIBLE = DeploymentStatus' "ELIGIBLE"

pattern DeploymentStatusINPROGRESS :: DeploymentStatus
pattern DeploymentStatusINPROGRESS = DeploymentStatus' "IN_PROGRESS"

pattern DeploymentStatusNOTELIGIBLE :: DeploymentStatus
pattern DeploymentStatusNOTELIGIBLE = DeploymentStatus' "NOT_ELIGIBLE"

pattern DeploymentStatusPENDINGUPDATE :: DeploymentStatus
pattern DeploymentStatusPENDINGUPDATE = DeploymentStatus' "PENDING_UPDATE"

{-# COMPLETE
  DeploymentStatusCOMPLETED,
  DeploymentStatusELIGIBLE,
  DeploymentStatusINPROGRESS,
  DeploymentStatusNOTELIGIBLE,
  DeploymentStatusPENDINGUPDATE,
  DeploymentStatus'
  #-}

instance Prelude.FromText DeploymentStatus where
  parser = DeploymentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentStatus where
  toText (DeploymentStatus' x) = x

instance Prelude.Hashable DeploymentStatus

instance Prelude.NFData DeploymentStatus

instance Prelude.ToByteString DeploymentStatus

instance Prelude.ToQuery DeploymentStatus

instance Prelude.ToHeader DeploymentStatus

instance Prelude.FromJSON DeploymentStatus where
  parseJSON = Prelude.parseJSONText "DeploymentStatus"
