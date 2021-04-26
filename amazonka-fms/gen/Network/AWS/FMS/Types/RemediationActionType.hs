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
-- Module      : Network.AWS.FMS.Types.RemediationActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.RemediationActionType
  ( RemediationActionType
      ( ..,
        RemediationActionTypeMODIFY,
        RemediationActionTypeREMOVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RemediationActionType = RemediationActionType'
  { fromRemediationActionType ::
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

pattern RemediationActionTypeMODIFY :: RemediationActionType
pattern RemediationActionTypeMODIFY = RemediationActionType' "MODIFY"

pattern RemediationActionTypeREMOVE :: RemediationActionType
pattern RemediationActionTypeREMOVE = RemediationActionType' "REMOVE"

{-# COMPLETE
  RemediationActionTypeMODIFY,
  RemediationActionTypeREMOVE,
  RemediationActionType'
  #-}

instance Prelude.FromText RemediationActionType where
  parser = RemediationActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RemediationActionType where
  toText (RemediationActionType' x) = x

instance Prelude.Hashable RemediationActionType

instance Prelude.NFData RemediationActionType

instance Prelude.ToByteString RemediationActionType

instance Prelude.ToQuery RemediationActionType

instance Prelude.ToHeader RemediationActionType

instance Prelude.FromJSON RemediationActionType where
  parseJSON = Prelude.parseJSONText "RemediationActionType"
