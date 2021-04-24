{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AlternatePathHint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AlternatePathHint where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an potential intermediate component of a feasible path.
--
--
--
-- /See:/ 'alternatePathHint' smart constructor.
data AlternatePathHint = AlternatePathHint'
  { _aphComponentId ::
      !(Maybe Text),
    _aphComponentARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AlternatePathHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aphComponentId' - The ID of the component.
--
-- * 'aphComponentARN' - The Amazon Resource Name (ARN) of the component.
alternatePathHint ::
  AlternatePathHint
alternatePathHint =
  AlternatePathHint'
    { _aphComponentId = Nothing,
      _aphComponentARN = Nothing
    }

-- | The ID of the component.
aphComponentId :: Lens' AlternatePathHint (Maybe Text)
aphComponentId = lens _aphComponentId (\s a -> s {_aphComponentId = a})

-- | The Amazon Resource Name (ARN) of the component.
aphComponentARN :: Lens' AlternatePathHint (Maybe Text)
aphComponentARN = lens _aphComponentARN (\s a -> s {_aphComponentARN = a})

instance FromXML AlternatePathHint where
  parseXML x =
    AlternatePathHint'
      <$> (x .@? "componentId") <*> (x .@? "componentArn")

instance Hashable AlternatePathHint

instance NFData AlternatePathHint
