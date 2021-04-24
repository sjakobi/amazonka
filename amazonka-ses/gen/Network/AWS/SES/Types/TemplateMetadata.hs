{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.TemplateMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.TemplateMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an email template.
--
--
--
-- /See:/ 'templateMetadata' smart constructor.
data TemplateMetadata = TemplateMetadata'
  { _tmCreatedTimestamp ::
      !(Maybe ISO8601),
    _tmName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TemplateMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmCreatedTimestamp' - The time and date the template was created.
--
-- * 'tmName' - The name of the template.
templateMetadata ::
  TemplateMetadata
templateMetadata =
  TemplateMetadata'
    { _tmCreatedTimestamp = Nothing,
      _tmName = Nothing
    }

-- | The time and date the template was created.
tmCreatedTimestamp :: Lens' TemplateMetadata (Maybe UTCTime)
tmCreatedTimestamp = lens _tmCreatedTimestamp (\s a -> s {_tmCreatedTimestamp = a}) . mapping _Time

-- | The name of the template.
tmName :: Lens' TemplateMetadata (Maybe Text)
tmName = lens _tmName (\s a -> s {_tmName = a})

instance FromXML TemplateMetadata where
  parseXML x =
    TemplateMetadata'
      <$> (x .@? "CreatedTimestamp") <*> (x .@? "Name")

instance Hashable TemplateMetadata

instance NFData TemplateMetadata
