{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StudioSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StudioSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details for an Amazon EMR Studio, including ID, Name, VPC, and Description. The details do not include subnets, IAM roles, security groups, or tags associated with the Studio.
--
--
--
-- /See:/ 'studioSummary' smart constructor.
data StudioSummary = StudioSummary'
  { _stuCreationTime ::
      !(Maybe POSIX),
    _stuName :: !(Maybe Text),
    _stuDescription :: !(Maybe Text),
    _stuURL :: !(Maybe Text),
    _stuVPCId :: !(Maybe Text),
    _stuStudioId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StudioSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stuCreationTime' - The time when the Amazon EMR Studio was created.
--
-- * 'stuName' - The name of the Amazon EMR Studio.
--
-- * 'stuDescription' - The detailed description of the Amazon EMR Studio.
--
-- * 'stuURL' - The unique access URL of the Amazon EMR Studio.
--
-- * 'stuVPCId' - The ID of the Virtual Private Cloud (Amazon VPC) associated with the Amazon EMR Studio.
--
-- * 'stuStudioId' - The ID of the Amazon EMR Studio.
studioSummary ::
  StudioSummary
studioSummary =
  StudioSummary'
    { _stuCreationTime = Nothing,
      _stuName = Nothing,
      _stuDescription = Nothing,
      _stuURL = Nothing,
      _stuVPCId = Nothing,
      _stuStudioId = Nothing
    }

-- | The time when the Amazon EMR Studio was created.
stuCreationTime :: Lens' StudioSummary (Maybe UTCTime)
stuCreationTime = lens _stuCreationTime (\s a -> s {_stuCreationTime = a}) . mapping _Time

-- | The name of the Amazon EMR Studio.
stuName :: Lens' StudioSummary (Maybe Text)
stuName = lens _stuName (\s a -> s {_stuName = a})

-- | The detailed description of the Amazon EMR Studio.
stuDescription :: Lens' StudioSummary (Maybe Text)
stuDescription = lens _stuDescription (\s a -> s {_stuDescription = a})

-- | The unique access URL of the Amazon EMR Studio.
stuURL :: Lens' StudioSummary (Maybe Text)
stuURL = lens _stuURL (\s a -> s {_stuURL = a})

-- | The ID of the Virtual Private Cloud (Amazon VPC) associated with the Amazon EMR Studio.
stuVPCId :: Lens' StudioSummary (Maybe Text)
stuVPCId = lens _stuVPCId (\s a -> s {_stuVPCId = a})

-- | The ID of the Amazon EMR Studio.
stuStudioId :: Lens' StudioSummary (Maybe Text)
stuStudioId = lens _stuStudioId (\s a -> s {_stuStudioId = a})

instance FromJSON StudioSummary where
  parseJSON =
    withObject
      "StudioSummary"
      ( \x ->
          StudioSummary'
            <$> (x .:? "CreationTime")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "Url")
            <*> (x .:? "VpcId")
            <*> (x .:? "StudioId")
      )

instance Hashable StudioSummary

instance NFData StudioSummary
