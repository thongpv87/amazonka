{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Job
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Job where

import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Glue.Types.NotificationProperty
import Network.AWS.Glue.Types.WorkerType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a job definition.
--
--
--
-- /See:/ 'job' smart constructor.
data Job = Job'
  { _jNonOverridableArguments ::
      !(Maybe (Map Text Text)),
    _jCreatedOn :: !(Maybe POSIX),
    _jSecurityConfiguration :: !(Maybe Text),
    _jTimeout :: !(Maybe Nat),
    _jMaxCapacity :: !(Maybe Double),
    _jConnections :: !(Maybe ConnectionsList),
    _jNotificationProperty ::
      !(Maybe NotificationProperty),
    _jLastModifiedOn :: !(Maybe POSIX),
    _jCommand :: !(Maybe JobCommand),
    _jNumberOfWorkers :: !(Maybe Int),
    _jName :: !(Maybe Text),
    _jRole :: !(Maybe Text),
    _jGlueVersion :: !(Maybe Text),
    _jWorkerType :: !(Maybe WorkerType),
    _jDescription :: !(Maybe Text),
    _jDefaultArguments :: !(Maybe (Map Text Text)),
    _jAllocatedCapacity :: !(Maybe Int),
    _jExecutionProperty :: !(Maybe ExecutionProperty),
    _jMaxRetries :: !(Maybe Int),
    _jLogURI :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jNonOverridableArguments' - Non-overridable arguments for this job, specified as name-value pairs.
--
-- * 'jCreatedOn' - The time and date that this job definition was created.
--
-- * 'jSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this job.
--
-- * 'jTimeout' - The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
--
-- * 'jMaxCapacity' - The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
-- * 'jConnections' - The connections used for this job.
--
-- * 'jNotificationProperty' - Specifies configuration properties of a job notification.
--
-- * 'jLastModifiedOn' - The last point in time when this job definition was modified.
--
-- * 'jCommand' - The @JobCommand@ that executes this job.
--
-- * 'jNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'jName' - The name you assign to this job definition.
--
-- * 'jRole' - The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
--
-- * 'jGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
--
-- * 'jWorkerType' - The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
-- * 'jDescription' - A description of the job.
--
-- * 'jDefaultArguments' - The default arguments for this job, specified as name-value pairs. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- * 'jAllocatedCapacity' - This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) allocated to runs of this job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- * 'jExecutionProperty' - An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
--
-- * 'jMaxRetries' - The maximum number of times to retry this job after a JobRun fails.
--
-- * 'jLogURI' - This field is reserved for future use.
job ::
  Job
job =
  Job'
    { _jNonOverridableArguments = Nothing,
      _jCreatedOn = Nothing,
      _jSecurityConfiguration = Nothing,
      _jTimeout = Nothing,
      _jMaxCapacity = Nothing,
      _jConnections = Nothing,
      _jNotificationProperty = Nothing,
      _jLastModifiedOn = Nothing,
      _jCommand = Nothing,
      _jNumberOfWorkers = Nothing,
      _jName = Nothing,
      _jRole = Nothing,
      _jGlueVersion = Nothing,
      _jWorkerType = Nothing,
      _jDescription = Nothing,
      _jDefaultArguments = Nothing,
      _jAllocatedCapacity = Nothing,
      _jExecutionProperty = Nothing,
      _jMaxRetries = Nothing,
      _jLogURI = Nothing
    }

-- | Non-overridable arguments for this job, specified as name-value pairs.
jNonOverridableArguments :: Lens' Job (HashMap Text Text)
jNonOverridableArguments = lens _jNonOverridableArguments (\s a -> s {_jNonOverridableArguments = a}) . _Default . _Map

-- | The time and date that this job definition was created.
jCreatedOn :: Lens' Job (Maybe UTCTime)
jCreatedOn = lens _jCreatedOn (\s a -> s {_jCreatedOn = a}) . mapping _Time

-- | The name of the @SecurityConfiguration@ structure to be used with this job.
jSecurityConfiguration :: Lens' Job (Maybe Text)
jSecurityConfiguration = lens _jSecurityConfiguration (\s a -> s {_jSecurityConfiguration = a})

-- | The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
jTimeout :: Lens' Job (Maybe Natural)
jTimeout = lens _jTimeout (\s a -> s {_jTimeout = a}) . mapping _Nat

-- | The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> . Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ . The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL job:     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
jMaxCapacity :: Lens' Job (Maybe Double)
jMaxCapacity = lens _jMaxCapacity (\s a -> s {_jMaxCapacity = a})

-- | The connections used for this job.
jConnections :: Lens' Job (Maybe ConnectionsList)
jConnections = lens _jConnections (\s a -> s {_jConnections = a})

-- | Specifies configuration properties of a job notification.
jNotificationProperty :: Lens' Job (Maybe NotificationProperty)
jNotificationProperty = lens _jNotificationProperty (\s a -> s {_jNotificationProperty = a})

-- | The last point in time when this job definition was modified.
jLastModifiedOn :: Lens' Job (Maybe UTCTime)
jLastModifiedOn = lens _jLastModifiedOn (\s a -> s {_jLastModifiedOn = a}) . mapping _Time

-- | The @JobCommand@ that executes this job.
jCommand :: Lens' Job (Maybe JobCommand)
jCommand = lens _jCommand (\s a -> s {_jCommand = a})

-- | The number of workers of a defined @workerType@ that are allocated when a job runs. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
jNumberOfWorkers :: Lens' Job (Maybe Int)
jNumberOfWorkers = lens _jNumberOfWorkers (\s a -> s {_jNumberOfWorkers = a})

-- | The name you assign to this job definition.
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\s a -> s {_jName = a})

-- | The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
jRole :: Lens' Job (Maybe Text)
jRole = lens _jRole (\s a -> s {_jRole = a})

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.
jGlueVersion :: Lens' Job (Maybe Text)
jGlueVersion = lens _jGlueVersion (\s a -> s {_jGlueVersion = a})

-- | The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
jWorkerType :: Lens' Job (Maybe WorkerType)
jWorkerType = lens _jWorkerType (\s a -> s {_jWorkerType = a})

-- | A description of the job.
jDescription :: Lens' Job (Maybe Text)
jDescription = lens _jDescription (\s a -> s {_jDescription = a})

-- | The default arguments for this job, specified as name-value pairs. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
jDefaultArguments :: Lens' Job (HashMap Text Text)
jDefaultArguments = lens _jDefaultArguments (\s a -> s {_jDefaultArguments = a}) . _Default . _Map

-- | This field is deprecated. Use @MaxCapacity@ instead. The number of AWS Glue data processing units (DPUs) allocated to runs of this job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
jAllocatedCapacity :: Lens' Job (Maybe Int)
jAllocatedCapacity = lens _jAllocatedCapacity (\s a -> s {_jAllocatedCapacity = a})

-- | An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
jExecutionProperty :: Lens' Job (Maybe ExecutionProperty)
jExecutionProperty = lens _jExecutionProperty (\s a -> s {_jExecutionProperty = a})

-- | The maximum number of times to retry this job after a JobRun fails.
jMaxRetries :: Lens' Job (Maybe Int)
jMaxRetries = lens _jMaxRetries (\s a -> s {_jMaxRetries = a})

-- | This field is reserved for future use.
jLogURI :: Lens' Job (Maybe Text)
jLogURI = lens _jLogURI (\s a -> s {_jLogURI = a})

instance FromJSON Job where
  parseJSON =
    withObject
      "Job"
      ( \x ->
          Job'
            <$> (x .:? "NonOverridableArguments" .!= mempty)
            <*> (x .:? "CreatedOn")
            <*> (x .:? "SecurityConfiguration")
            <*> (x .:? "Timeout")
            <*> (x .:? "MaxCapacity")
            <*> (x .:? "Connections")
            <*> (x .:? "NotificationProperty")
            <*> (x .:? "LastModifiedOn")
            <*> (x .:? "Command")
            <*> (x .:? "NumberOfWorkers")
            <*> (x .:? "Name")
            <*> (x .:? "Role")
            <*> (x .:? "GlueVersion")
            <*> (x .:? "WorkerType")
            <*> (x .:? "Description")
            <*> (x .:? "DefaultArguments" .!= mempty)
            <*> (x .:? "AllocatedCapacity")
            <*> (x .:? "ExecutionProperty")
            <*> (x .:? "MaxRetries")
            <*> (x .:? "LogUri")
      )

instance Hashable Job

instance NFData Job
