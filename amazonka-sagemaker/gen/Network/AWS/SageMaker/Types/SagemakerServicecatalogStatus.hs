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
-- Module      : Network.AWS.SageMaker.Types.SagemakerServicecatalogStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SagemakerServicecatalogStatus
  ( SagemakerServicecatalogStatus
      ( ..,
        SagemakerServicecatalogStatusDisabled,
        SagemakerServicecatalogStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SagemakerServicecatalogStatus = SagemakerServicecatalogStatus'
  { fromSagemakerServicecatalogStatus ::
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

pattern SagemakerServicecatalogStatusDisabled :: SagemakerServicecatalogStatus
pattern SagemakerServicecatalogStatusDisabled = SagemakerServicecatalogStatus' "Disabled"

pattern SagemakerServicecatalogStatusEnabled :: SagemakerServicecatalogStatus
pattern SagemakerServicecatalogStatusEnabled = SagemakerServicecatalogStatus' "Enabled"

{-# COMPLETE
  SagemakerServicecatalogStatusDisabled,
  SagemakerServicecatalogStatusEnabled,
  SagemakerServicecatalogStatus'
  #-}

instance Prelude.FromText SagemakerServicecatalogStatus where
  parser = SagemakerServicecatalogStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SagemakerServicecatalogStatus where
  toText (SagemakerServicecatalogStatus' x) = x

instance Prelude.Hashable SagemakerServicecatalogStatus

instance Prelude.NFData SagemakerServicecatalogStatus

instance Prelude.ToByteString SagemakerServicecatalogStatus

instance Prelude.ToQuery SagemakerServicecatalogStatus

instance Prelude.ToHeader SagemakerServicecatalogStatus

instance Prelude.FromJSON SagemakerServicecatalogStatus where
  parseJSON = Prelude.parseJSONText "SagemakerServicecatalogStatus"
