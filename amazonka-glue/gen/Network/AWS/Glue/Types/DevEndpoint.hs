{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DevEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DevEndpoint where

import Network.AWS.Glue.Types.WorkerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A development endpoint where a developer can remotely debug extract, transform, and load (ETL) scripts.
--
--
--
-- /See:/ 'devEndpoint' smart constructor.
data DevEndpoint = DevEndpoint'
  { _deSecurityGroupIds ::
      !(Maybe [Text]),
    _deLastUpdateStatus :: !(Maybe Text),
    _dePublicAddress :: !(Maybe Text),
    _deStatus :: !(Maybe Text),
    _deEndpointName :: !(Maybe Text),
    _deRoleARN :: !(Maybe Text),
    _deYarnEndpointAddress :: !(Maybe Text),
    _deSecurityConfiguration :: !(Maybe Text),
    _dePublicKey :: !(Maybe Text),
    _deCreatedTimestamp :: !(Maybe POSIX),
    _dePrivateAddress :: !(Maybe Text),
    _deLastModifiedTimestamp :: !(Maybe POSIX),
    _deExtraPythonLibsS3Path :: !(Maybe Text),
    _deNumberOfWorkers :: !(Maybe Int),
    _deZeppelinRemoteSparkInterpreterPort ::
      !(Maybe Int),
    _deAvailabilityZone :: !(Maybe Text),
    _deFailureReason :: !(Maybe Text),
    _deGlueVersion :: !(Maybe Text),
    _deNumberOfNodes :: !(Maybe Int),
    _deWorkerType :: !(Maybe WorkerType),
    _deSubnetId :: !(Maybe Text),
    _deVPCId :: !(Maybe Text),
    _deArguments :: !(Maybe (Map Text Text)),
    _dePublicKeys :: !(Maybe [Text]),
    _deExtraJARsS3Path :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DevEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deSecurityGroupIds' - A list of security group identifiers used in this @DevEndpoint@ .
--
-- * 'deLastUpdateStatus' - The status of the last update.
--
-- * 'dePublicAddress' - The public IP address used by this @DevEndpoint@ . The @PublicAddress@ field is present only when you create a non-virtual private cloud (VPC) @DevEndpoint@ .
--
-- * 'deStatus' - The current status of this @DevEndpoint@ .
--
-- * 'deEndpointName' - The name of the @DevEndpoint@ .
--
-- * 'deRoleARN' - The Amazon Resource Name (ARN) of the IAM role used in this @DevEndpoint@ .
--
-- * 'deYarnEndpointAddress' - The YARN endpoint address used by this @DevEndpoint@ .
--
-- * 'deSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this @DevEndpoint@ .
--
-- * 'dePublicKey' - The public key to be used by this @DevEndpoint@ for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.
--
-- * 'deCreatedTimestamp' - The point in time at which this DevEndpoint was created.
--
-- * 'dePrivateAddress' - A private IP address to access the @DevEndpoint@ within a VPC if the @DevEndpoint@ is created within one. The @PrivateAddress@ field is present only when you create the @DevEndpoint@ within your VPC.
--
-- * 'deLastModifiedTimestamp' - The point in time at which this @DevEndpoint@ was last modified.
--
-- * 'deExtraPythonLibsS3Path' - The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your @DevEndpoint@ . Multiple values must be complete paths separated by a comma.
--
-- * 'deNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated to the development endpoint. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'deZeppelinRemoteSparkInterpreterPort' - The Apache Zeppelin port for the remote Apache Spark interpreter.
--
-- * 'deAvailabilityZone' - The AWS Availability Zone where this @DevEndpoint@ is located.
--
-- * 'deFailureReason' - The reason for a current failure in this @DevEndpoint@ .
--
-- * 'deGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Development endpoints that are created without specifying a Glue version default to Glue 0.9. You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
--
-- * 'deNumberOfNodes' - The number of AWS Glue Data Processing Units (DPUs) allocated to this @DevEndpoint@ .
--
-- * 'deWorkerType' - The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs. Known issue: when a development endpoint is created with the @G.2X@ @WorkerType@ configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
--
-- * 'deSubnetId' - The subnet ID for this @DevEndpoint@ .
--
-- * 'deVPCId' - The ID of the virtual private cloud (VPC) used by this @DevEndpoint@ .
--
-- * 'deArguments' - A map of arguments used to configure the @DevEndpoint@ . Valid arguments are:     * @"--enable-glue-datacatalog": ""@      * @"GLUE_PYTHON_VERSION": "3"@      * @"GLUE_PYTHON_VERSION": "2"@  You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
--
-- * 'dePublicKeys' - A list of public keys to be used by the @DevEndpoints@ for authentication. Using this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.
--
-- * 'deExtraJARsS3Path' - The path to one or more Java @.jar@ files in an S3 bucket that should be loaded in your @DevEndpoint@ .
devEndpoint ::
  DevEndpoint
devEndpoint =
  DevEndpoint'
    { _deSecurityGroupIds = Nothing,
      _deLastUpdateStatus = Nothing,
      _dePublicAddress = Nothing,
      _deStatus = Nothing,
      _deEndpointName = Nothing,
      _deRoleARN = Nothing,
      _deYarnEndpointAddress = Nothing,
      _deSecurityConfiguration = Nothing,
      _dePublicKey = Nothing,
      _deCreatedTimestamp = Nothing,
      _dePrivateAddress = Nothing,
      _deLastModifiedTimestamp = Nothing,
      _deExtraPythonLibsS3Path = Nothing,
      _deNumberOfWorkers = Nothing,
      _deZeppelinRemoteSparkInterpreterPort = Nothing,
      _deAvailabilityZone = Nothing,
      _deFailureReason = Nothing,
      _deGlueVersion = Nothing,
      _deNumberOfNodes = Nothing,
      _deWorkerType = Nothing,
      _deSubnetId = Nothing,
      _deVPCId = Nothing,
      _deArguments = Nothing,
      _dePublicKeys = Nothing,
      _deExtraJARsS3Path = Nothing
    }

-- | A list of security group identifiers used in this @DevEndpoint@ .
deSecurityGroupIds :: Lens' DevEndpoint [Text]
deSecurityGroupIds = lens _deSecurityGroupIds (\s a -> s {_deSecurityGroupIds = a}) . _Default . _Coerce

-- | The status of the last update.
deLastUpdateStatus :: Lens' DevEndpoint (Maybe Text)
deLastUpdateStatus = lens _deLastUpdateStatus (\s a -> s {_deLastUpdateStatus = a})

-- | The public IP address used by this @DevEndpoint@ . The @PublicAddress@ field is present only when you create a non-virtual private cloud (VPC) @DevEndpoint@ .
dePublicAddress :: Lens' DevEndpoint (Maybe Text)
dePublicAddress = lens _dePublicAddress (\s a -> s {_dePublicAddress = a})

-- | The current status of this @DevEndpoint@ .
deStatus :: Lens' DevEndpoint (Maybe Text)
deStatus = lens _deStatus (\s a -> s {_deStatus = a})

-- | The name of the @DevEndpoint@ .
deEndpointName :: Lens' DevEndpoint (Maybe Text)
deEndpointName = lens _deEndpointName (\s a -> s {_deEndpointName = a})

-- | The Amazon Resource Name (ARN) of the IAM role used in this @DevEndpoint@ .
deRoleARN :: Lens' DevEndpoint (Maybe Text)
deRoleARN = lens _deRoleARN (\s a -> s {_deRoleARN = a})

-- | The YARN endpoint address used by this @DevEndpoint@ .
deYarnEndpointAddress :: Lens' DevEndpoint (Maybe Text)
deYarnEndpointAddress = lens _deYarnEndpointAddress (\s a -> s {_deYarnEndpointAddress = a})

-- | The name of the @SecurityConfiguration@ structure to be used with this @DevEndpoint@ .
deSecurityConfiguration :: Lens' DevEndpoint (Maybe Text)
deSecurityConfiguration = lens _deSecurityConfiguration (\s a -> s {_deSecurityConfiguration = a})

-- | The public key to be used by this @DevEndpoint@ for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.
dePublicKey :: Lens' DevEndpoint (Maybe Text)
dePublicKey = lens _dePublicKey (\s a -> s {_dePublicKey = a})

-- | The point in time at which this DevEndpoint was created.
deCreatedTimestamp :: Lens' DevEndpoint (Maybe UTCTime)
deCreatedTimestamp = lens _deCreatedTimestamp (\s a -> s {_deCreatedTimestamp = a}) . mapping _Time

-- | A private IP address to access the @DevEndpoint@ within a VPC if the @DevEndpoint@ is created within one. The @PrivateAddress@ field is present only when you create the @DevEndpoint@ within your VPC.
dePrivateAddress :: Lens' DevEndpoint (Maybe Text)
dePrivateAddress = lens _dePrivateAddress (\s a -> s {_dePrivateAddress = a})

-- | The point in time at which this @DevEndpoint@ was last modified.
deLastModifiedTimestamp :: Lens' DevEndpoint (Maybe UTCTime)
deLastModifiedTimestamp = lens _deLastModifiedTimestamp (\s a -> s {_deLastModifiedTimestamp = a}) . mapping _Time

-- | The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your @DevEndpoint@ . Multiple values must be complete paths separated by a comma.
deExtraPythonLibsS3Path :: Lens' DevEndpoint (Maybe Text)
deExtraPythonLibsS3Path = lens _deExtraPythonLibsS3Path (\s a -> s {_deExtraPythonLibsS3Path = a})

-- | The number of workers of a defined @workerType@ that are allocated to the development endpoint. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
deNumberOfWorkers :: Lens' DevEndpoint (Maybe Int)
deNumberOfWorkers = lens _deNumberOfWorkers (\s a -> s {_deNumberOfWorkers = a})

-- | The Apache Zeppelin port for the remote Apache Spark interpreter.
deZeppelinRemoteSparkInterpreterPort :: Lens' DevEndpoint (Maybe Int)
deZeppelinRemoteSparkInterpreterPort = lens _deZeppelinRemoteSparkInterpreterPort (\s a -> s {_deZeppelinRemoteSparkInterpreterPort = a})

-- | The AWS Availability Zone where this @DevEndpoint@ is located.
deAvailabilityZone :: Lens' DevEndpoint (Maybe Text)
deAvailabilityZone = lens _deAvailabilityZone (\s a -> s {_deAvailabilityZone = a})

-- | The reason for a current failure in this @DevEndpoint@ .
deFailureReason :: Lens' DevEndpoint (Maybe Text)
deFailureReason = lens _deFailureReason (\s a -> s {_deFailureReason = a})

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Development endpoints that are created without specifying a Glue version default to Glue 0.9. You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
deGlueVersion :: Lens' DevEndpoint (Maybe Text)
deGlueVersion = lens _deGlueVersion (\s a -> s {_deGlueVersion = a})

-- | The number of AWS Glue Data Processing Units (DPUs) allocated to this @DevEndpoint@ .
deNumberOfNodes :: Lens' DevEndpoint (Maybe Int)
deNumberOfNodes = lens _deNumberOfNodes (\s a -> s {_deNumberOfNodes = a})

-- | The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs. Known issue: when a development endpoint is created with the @G.2X@ @WorkerType@ configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
deWorkerType :: Lens' DevEndpoint (Maybe WorkerType)
deWorkerType = lens _deWorkerType (\s a -> s {_deWorkerType = a})

-- | The subnet ID for this @DevEndpoint@ .
deSubnetId :: Lens' DevEndpoint (Maybe Text)
deSubnetId = lens _deSubnetId (\s a -> s {_deSubnetId = a})

-- | The ID of the virtual private cloud (VPC) used by this @DevEndpoint@ .
deVPCId :: Lens' DevEndpoint (Maybe Text)
deVPCId = lens _deVPCId (\s a -> s {_deVPCId = a})

-- | A map of arguments used to configure the @DevEndpoint@ . Valid arguments are:     * @"--enable-glue-datacatalog": ""@      * @"GLUE_PYTHON_VERSION": "3"@      * @"GLUE_PYTHON_VERSION": "2"@  You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
deArguments :: Lens' DevEndpoint (HashMap Text Text)
deArguments = lens _deArguments (\s a -> s {_deArguments = a}) . _Default . _Map

-- | A list of public keys to be used by the @DevEndpoints@ for authentication. Using this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.
dePublicKeys :: Lens' DevEndpoint [Text]
dePublicKeys = lens _dePublicKeys (\s a -> s {_dePublicKeys = a}) . _Default . _Coerce

-- | The path to one or more Java @.jar@ files in an S3 bucket that should be loaded in your @DevEndpoint@ .
deExtraJARsS3Path :: Lens' DevEndpoint (Maybe Text)
deExtraJARsS3Path = lens _deExtraJARsS3Path (\s a -> s {_deExtraJARsS3Path = a})

instance FromJSON DevEndpoint where
  parseJSON =
    withObject
      "DevEndpoint"
      ( \x ->
          DevEndpoint'
            <$> (x .:? "SecurityGroupIds" .!= mempty)
            <*> (x .:? "LastUpdateStatus")
            <*> (x .:? "PublicAddress")
            <*> (x .:? "Status")
            <*> (x .:? "EndpointName")
            <*> (x .:? "RoleArn")
            <*> (x .:? "YarnEndpointAddress")
            <*> (x .:? "SecurityConfiguration")
            <*> (x .:? "PublicKey")
            <*> (x .:? "CreatedTimestamp")
            <*> (x .:? "PrivateAddress")
            <*> (x .:? "LastModifiedTimestamp")
            <*> (x .:? "ExtraPythonLibsS3Path")
            <*> (x .:? "NumberOfWorkers")
            <*> (x .:? "ZeppelinRemoteSparkInterpreterPort")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "FailureReason")
            <*> (x .:? "GlueVersion")
            <*> (x .:? "NumberOfNodes")
            <*> (x .:? "WorkerType")
            <*> (x .:? "SubnetId")
            <*> (x .:? "VpcId")
            <*> (x .:? "Arguments" .!= mempty)
            <*> (x .:? "PublicKeys" .!= mempty)
            <*> (x .:? "ExtraJarsS3Path")
      )

instance Hashable DevEndpoint

instance NFData DevEndpoint
