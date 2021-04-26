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
-- Module      : Network.AWS.Greengrass.Types.SoftwareToUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.SoftwareToUpdate
  ( SoftwareToUpdate
      ( ..,
        SoftwareToUpdateCore,
        SoftwareToUpdateOtaAgent
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The piece of software on the Greengrass core that will be updated.
newtype SoftwareToUpdate = SoftwareToUpdate'
  { fromSoftwareToUpdate ::
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

pattern SoftwareToUpdateCore :: SoftwareToUpdate
pattern SoftwareToUpdateCore = SoftwareToUpdate' "core"

pattern SoftwareToUpdateOtaAgent :: SoftwareToUpdate
pattern SoftwareToUpdateOtaAgent = SoftwareToUpdate' "ota_agent"

{-# COMPLETE
  SoftwareToUpdateCore,
  SoftwareToUpdateOtaAgent,
  SoftwareToUpdate'
  #-}

instance Prelude.FromText SoftwareToUpdate where
  parser = SoftwareToUpdate' Prelude.<$> Prelude.takeText

instance Prelude.ToText SoftwareToUpdate where
  toText (SoftwareToUpdate' x) = x

instance Prelude.Hashable SoftwareToUpdate

instance Prelude.NFData SoftwareToUpdate

instance Prelude.ToByteString SoftwareToUpdate

instance Prelude.ToQuery SoftwareToUpdate

instance Prelude.ToHeader SoftwareToUpdate

instance Prelude.ToJSON SoftwareToUpdate where
  toJSON = Prelude.toJSONText
