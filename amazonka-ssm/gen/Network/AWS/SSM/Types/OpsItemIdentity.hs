{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemIdentity where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the user or resource that created an OpsItem event.
--
--
--
-- /See:/ 'opsItemIdentity' smart constructor.
newtype OpsItemIdentity = OpsItemIdentity'
  { _oiiARN ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsItemIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiiARN' - The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem event.
opsItemIdentity ::
  OpsItemIdentity
opsItemIdentity = OpsItemIdentity' {_oiiARN = Nothing}

-- | The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem event.
oiiARN :: Lens' OpsItemIdentity (Maybe Text)
oiiARN = lens _oiiARN (\s a -> s {_oiiARN = a})

instance FromJSON OpsItemIdentity where
  parseJSON =
    withObject
      "OpsItemIdentity"
      (\x -> OpsItemIdentity' <$> (x .:? "Arn"))

instance Hashable OpsItemIdentity

instance NFData OpsItemIdentity
