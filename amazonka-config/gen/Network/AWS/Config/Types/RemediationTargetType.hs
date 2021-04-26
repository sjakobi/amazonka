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
-- Module      : Network.AWS.Config.Types.RemediationTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationTargetType
  ( RemediationTargetType
      ( ..,
        RemediationTargetTypeSSMDOCUMENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RemediationTargetType = RemediationTargetType'
  { fromRemediationTargetType ::
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

pattern RemediationTargetTypeSSMDOCUMENT :: RemediationTargetType
pattern RemediationTargetTypeSSMDOCUMENT = RemediationTargetType' "SSM_DOCUMENT"

{-# COMPLETE
  RemediationTargetTypeSSMDOCUMENT,
  RemediationTargetType'
  #-}

instance Prelude.FromText RemediationTargetType where
  parser = RemediationTargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RemediationTargetType where
  toText (RemediationTargetType' x) = x

instance Prelude.Hashable RemediationTargetType

instance Prelude.NFData RemediationTargetType

instance Prelude.ToByteString RemediationTargetType

instance Prelude.ToQuery RemediationTargetType

instance Prelude.ToHeader RemediationTargetType

instance Prelude.ToJSON RemediationTargetType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RemediationTargetType where
  parseJSON = Prelude.parseJSONText "RemediationTargetType"
